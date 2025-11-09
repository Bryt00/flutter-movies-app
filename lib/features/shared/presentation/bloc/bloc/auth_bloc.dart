import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/auth/data/models/user_signup_params.dart';
import 'package:movies_app/features/auth/domain/usecases/signup_usecase.dart';
import 'package:movies_app/features/shared/data/entity/user.dart';
import 'package:movies_app/service_locator.dart';


part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<SignupEvent>(_onSignup);
  }

  void _onSignup(SignupEvent event, Emitter<AuthState> emit) async {
    try {
      emit(LoadingState());
      final res = await serviceLocator<SignupUsecase>().call(params: event.params);
      res.fold(
        (failure) => emit(AuthFailureState(failure.toString())),
        (user) => emit(AuthSuccessState())
      );
    } catch (e) {
      emit(AuthFailureState(e.toString()));
    }
}
}