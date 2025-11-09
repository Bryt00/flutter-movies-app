import 'package:flutter/material.dart';
import 'package:movies_app/core/core.dart';
import 'package:movies_app/features/auth/auth.dart';
import 'package:movies_app/features/shared/shared.dart';

class SigninPage extends StatelessWidget{
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        minimum: EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        TextWidget(text: "Sign In", textStyle: Theme.of(context).textTheme.headlineLarge,),
        SizedBox(height: 30,),
        TxtFieldWidget(hintTxt: "Email"),
        SizedBox(height: 25,),
        TxtFieldWidget(hintTxt: "Password"),
        SizedBox(height: 50,),
        ReactiveBtnWidget(title: "Sign In",),
        SizedBox(height: 15,),
        RichtextWidget(text: "Don't have an account?", text1: " Sign Up",onTap: () => AppRoutes.push(context, SignupPage()),)
      ],),),
    );
  }

   //Text signinText() => Text("Sign In",style: TextStyle(fontWeight:FontWeight.bold,),);
}