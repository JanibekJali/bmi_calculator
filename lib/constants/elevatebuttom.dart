import 'package:flutter/material.dart';

import 'text_style/app_text_style.dart';

class Buttom extends StatelessWidget {
  final Function()? evatedButton;
  final String? lable;
  final Color? color_;
  const Buttom({super.key, this.evatedButton, this.lable, this.color_});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: evatedButton,
      child: Text(
        '$lable',
        style: AppTextStyle.white30W600,
      ),
      style: ElevatedButton.styleFrom(
          primary: color_, minimumSize: Size(double.infinity, 50)),
    );
  }
}
