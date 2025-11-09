//part of 'splash_bloc.dart';

abstract class SplashState {}

final class SplashInitial extends SplashState {}

final class DisplaySplash extends SplashState{}

final class Authenticated extends SplashState{}

final class UnAuthenticated extends SplashState{}
