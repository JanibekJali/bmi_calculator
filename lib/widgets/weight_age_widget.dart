import 'package:bmi_calculator/constants/decoration/app_decoration.dart';
import 'package:bmi_calculator/constants/text_style/app_text_style.dart';
import 'package:flutter/material.dart';

class WeightAgeWidget extends StatelessWidget {
  const WeightAgeWidget({
    super.key,
    this.onMinus,
    this.onPlus,
    required this.weightAgeText,
    required this.text,
  });
  final Function()? onPlus;
  final Function()? onMinus;
  final int? weightAgeText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.22,
      width: MediaQuery.of(context).size.width * 0.38,
      decoration: AppDecoration.radius15grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text.toUpperCase(),
            style: AppTextStyle.white30W600,
          ),
          Text(
            weightAgeText.toString(),
            style: AppTextStyle.white50W600,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: onPlus,
                child: Icon(Icons.add),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                ),
              ),
              ElevatedButton(
                onPressed: onMinus,
                child: Icon(Icons.remove),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
