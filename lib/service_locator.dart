import 'package:get_it/get_it.dart';
import 'package:movies_app/features/auth/auth.dart';
import 'package:movies_app/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:movies_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:movies_app/features/auth/domain/usecases/signup_usecase.dart';

import 'core/network/dio_client.dart';

final serviceLocator = GetIt.instance;

void initServiceLocator(){
  serviceLocator.registerSingleton<DioClient>(DioClient());

  serviceLocator.registerSingleton<AuthRemoteDataSource>(AuthRemoteDataSourceImpl());

  serviceLocator.registerSingleton<AuthRepository>(AuthRepositoryImpl()); 

  serviceLocator.registerSingleton<SignupUsecase>(
    SignupUsecase(authRepository: serviceLocator())
  );
}