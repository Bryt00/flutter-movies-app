import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/core/core.dart';

import 'package:movies_app/service_locator.dart';

import '../../models/user_signup_params.dart';

abstract interface class AuthRemoteDataSource {
  Future<Either> signup(UserSignupParams params);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<Either> signup(UserSignupParams params) async {
    try {
      var response = await serviceLocator<DioClient>().post(
        AppSecrets.signupUrl,
        data: params.toMap(),
      );
      return Right(response.data);
    } on DioException catch (ex) {
      return left(ex.response!.data['message']);
    }
  }
}
