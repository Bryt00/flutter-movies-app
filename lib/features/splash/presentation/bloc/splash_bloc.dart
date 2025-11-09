import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/splash/presentation/bloc/bloc.dart';


//part 'splash_event.dart';
//part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<DisplaySplashEvent>(_onAppLauch);
  }
void _onAppLauch(DisplaySplashEvent event, Emitter<SplashState> emit) async{
  await Future.delayed(Duration(seconds: 3));
  emit(UnAuthenticated());

}
}
