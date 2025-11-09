import 'package:dartz/dartz.dart';
import 'package:movies_app/features/auth/data/models/user_signup_params.dart';

abstract interface class AuthRepository {
  Future<Either> signup(UserSignupParams params);
  Future login();
  Future logout();
}