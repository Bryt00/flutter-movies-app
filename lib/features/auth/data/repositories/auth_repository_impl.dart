import 'package:dartz/dartz.dart';
import 'package:movies_app/features/auth/auth.dart';
import 'package:movies_app/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:movies_app/features/auth/data/models/user_signup_params.dart';
import 'package:movies_app/service_locator.dart';

class AuthRepositoryImpl implements AuthRepository{
  @override
  Future login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(UserSignupParams params)async{
    return await serviceLocator<AuthRemoteDataSource>().signup(params);
  }
}