part of 'auth_bloc.dart';

abstract class AuthEvent {}

class AuthStateChangeEvent extends AuthEvent {
  final fbAuth.User? firebaseUser;

  AuthStateChangeEvent({
    this.firebaseUser,
  });
}

class SignoutRequestedEvent extends AuthEvent {}

class AuthGoogleSignInEvent extends AuthEvent {}
