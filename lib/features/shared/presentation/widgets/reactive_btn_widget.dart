import 'package:flutter/material.dart';
import 'package:movies_app/core/configs/theme/app_colors.dart';
import 'package:reactive_button/reactive_button.dart';

class ReactiveBtnWidget extends StatelessWidget{
  final String? title;
  final Future<dynamic> Function()? onPressed;
  const ReactiveBtnWidget({super.key, this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ReactiveButton(
      title: title,
      activeColor: AppColors.primary,
      onPressed: onPressed ?? () async => "", 
      onFailure: (error) => "",
      onSuccess: () => "",);
  }
}