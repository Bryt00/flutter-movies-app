part of 'auth_bloc.dart';

abstract class AuthEvent {}

final class SignupEvent extends AuthEvent {
  final UserSignupParams params;
  // final String email;
  // final String password;

  SignupEvent({required this.params});
}
