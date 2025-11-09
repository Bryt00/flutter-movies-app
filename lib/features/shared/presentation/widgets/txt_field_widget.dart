import 'package:flutter/material.dart';

class TxtFieldWidget extends StatelessWidget{
  final String hintTxt;
  final TextEditingController? controller;
  const TxtFieldWidget({super.key, required this.hintTxt, this.controller});

  

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintTxt, 

      ),
    );
  }
}