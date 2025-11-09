part of 'auth_bloc.dart';


abstract class AuthState {
  const AuthState();
}

final class AuthInitial extends AuthState {}

final class LoadingState extends AuthState{}

final class AuthSuccessState extends AuthState{

}

final class AuthFailureState extends AuthState {
  final String message;

  const AuthFailureState(this.message);
}