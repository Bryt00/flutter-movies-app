import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/core.dart';
import 'package:movies_app/features/auth/auth.dart';
import 'package:movies_app/features/home/pages/home_page.dart';
import 'package:movies_app/features/splash/presentation/bloc/bloc.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  
   @override
     void initState(){
    context.read<SplashBloc>().add(DisplaySplashEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    //context.read()<SplashBloc>().add(DisplaySplashEvent());
    return Scaffold(
      body: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if(state is UnAuthenticated){
            AppRoutes.pushReplacement(context, SigninPage());
          }

          if (state is Authenticated){
            AppRoutes.pushReplacement(context, HomePage());
          }
        },
     //   builder:(context, state){
          //return
          child:  Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.splashBackground),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff1A1820).withValues(alpha: 0),
                    Color(0xff1A1820),
                  ],
                ),
              ),
            ),
          ],
        )
  ),
    );
  }
}
