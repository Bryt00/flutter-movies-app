import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{
  final String text;
  final TextStyle? textStyle;
  final TextSpan? textSpan;
  const TextWidget({ super.key, required this.text, this.textStyle, this.textSpan});
  
  @override
  Widget build(BuildContext context) {
    return Text(text, style: textStyle,);
  }
  
}