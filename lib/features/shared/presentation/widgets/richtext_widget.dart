import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class RichtextWidget extends StatelessWidget{
  final String? text;
  final String? text1;
  final Function()? onTap;  
  const RichtextWidget({super.key, this.text, this.text1, this.onTap});
  
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(text: text),
        
        TextSpan(text: text1, style: TextStyle(color: Colors.blue),recognizer: TapGestureRecognizer()..onTap=onTap
        ),
      
      ],),
    );
  }
  
}