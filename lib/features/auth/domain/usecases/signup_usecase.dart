import 'package:dartz/dartz.dart';
import 'package:movies_app/core/usecase/usecase.dart';
import 'package:movies_app/features/auth/auth.dart';
import 'package:movies_app/features/auth/data/models/user_signup_params.dart';

class SignupUsecase implements Usecase<Either,UserSignupParams>{
  final AuthRepository authRepository;

  SignupUsecase({required this.authRepository});

  @override
  Future<Either> call({UserSignupParams? params}) async {
   return await authRepository.signup(params!);
  }
}