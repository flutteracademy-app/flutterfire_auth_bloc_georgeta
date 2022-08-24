import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart' as fbAuth;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_auth_bloc_georgeta/services/firebase_auth_services.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  late final StreamSubscription authSubscription;
  final FirebaseAuthServices firebaseAuthServices;
  AuthBloc({
    required this.firebaseAuthServices,
  }) : super(AuthState.unknown()) {
    authSubscription = firebaseAuthServices.user.listen((fbAuth.User? user) {
      add(AuthStateChangeEvent(firebaseUser: user));
    });
    on<AuthStateChangeEvent>((event, emit) {
      if (event.firebaseUser != null) {
        emit(state.copyWith(
          authStatus: AuthStatus.authenticated,
          firebaseUser: event.firebaseUser,
        ));
      } else {
        emit(
          state.copyWith(
            authStatus: AuthStatus.unathenticated,
            firebaseUser: null,
          ),
        );
      }
    });

    on<SignoutRequestedEvent>((event, emit) async {
      await firebaseAuthServices.signOut();
    });

    on<AuthGoogleSignInEvent>((event, emit) async {
      await firebaseAuthServices.authWithGoogle();
    });
  }
}
