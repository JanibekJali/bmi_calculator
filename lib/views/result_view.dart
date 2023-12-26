import 'package:bmi_calculator/bmi_brain.dart';
import 'package:bmi_calculator/constants/elevatebuttom.dart';
import 'package:bmi_calculator/constants/text_style/app_text_style.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({
    super.key,
    required this.height,
    required this.weight,
  });
  final double? height;
  final int? weight;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
            color: Color(0xff0A001F),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Нормалдуу',
                  style: AppTextStyle.green32W600,
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  BmiBrain().calculateBmi(weight!, height!).toStringAsFixed(1),
                  style: AppTextStyle.white60W600,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Opisanie',
                  style: AppTextStyle.white30W600,
                ),
                Buttom(
                  color_: Colors.green,
                  lable: 'try again',
                  evatedButton: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )),
      ),
    );
  }
}
