import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/core.dart';
import 'package:movies_app/features/auth/auth.dart';
import 'package:movies_app/features/auth/data/models/user_signup_params.dart';
import 'package:movies_app/features/home/pages/home_page.dart';
import 'package:movies_app/features/shared/shared.dart';


class SignupPage extends StatefulWidget{
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {

        return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
           if (state is AuthSuccessState) {
            // Navigate to home or show success message
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Signup successful!')),
            );
          }
          if (state is AuthFailureState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Loader(
            isLoading: (state is LoadingState),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: SafeArea(
                  minimum: EdgeInsets.only(top: 100, left: 20, right: 20),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  TextWidget(text: "Sign Up", textStyle: Theme.of(context).textTheme.headlineLarge,),
                  SizedBox(height: 30,),
                  TxtFieldWidget(controller: emailController,hintTxt: "Email"),
                  SizedBox(height: 25,),
                  TxtFieldWidget(controller:passwordController, hintTxt: "Password"),
                   SizedBox(height: 25,),
                  TxtFieldWidget(hintTxt: "Confirm Password"),
                  SizedBox(height: 50,),
                  ReactiveBtnWidget(
                    title: "Sign Up",
                    onPressed: () async {
                      final signupParams = UserSignupParams(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                      context.read<AuthBloc>().add(SignupEvent(params: signupParams));
                      return 'success';
                    },
                  ),
                  SizedBox(height: 15,),
                  RichtextWidget(text: "Already having an account?", text1: " Sign In",onTap: () => AppRoutes.push(context, SigninPage()),)
                ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}