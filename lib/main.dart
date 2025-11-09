import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/configs/theme/app_theme.dart';
import 'package:movies_app/features/shared/presentation/bloc/bloc/auth_bloc.dart';
import 'package:movies_app/features/splash/splash.dart';
import 'package:movies_app/service_locator.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initServiceLocator();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>SplashBloc()),
        BlocProvider(create: (context)=>AuthBloc(),)
      ],
       child:  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.appTheme,
          home: const SplashPage(),
        ),
      
    );
  }
}

// 