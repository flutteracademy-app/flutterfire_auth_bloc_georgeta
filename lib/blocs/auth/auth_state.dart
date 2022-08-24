part of 'auth_bloc.dart';

enum AuthStatus {
  unknown,
  authenticated,
  unathenticated,
}

class AuthState {
  final AuthStatus authStatus;
  final fbAuth.User? firebaseUser;

  AuthState({
    required this.authStatus,
    this.firebaseUser,
  });

  factory AuthState.unknown() {
    return AuthState(authStatus: AuthStatus.unknown);
  }

  AuthState copyWith({
    AuthStatus? authStatus,
    fbAuth.User? firebaseUser,
  }) {
    return AuthState(
      authStatus: authStatus ?? this.authStatus,
      firebaseUser: firebaseUser ?? this.firebaseUser,
    );
  }
}
