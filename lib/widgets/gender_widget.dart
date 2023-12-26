import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/constants/decoration/app_decoration.dart';
import 'package:bmi_calculator/constants/text_style/app_text_style.dart';
import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    super.key,
    this.onTap,
    this.icon,
    this.data,
    this.horizontal = 30,
    this.vertical = 30,
    this.genderColor,
  });
  final Function()? onTap;
  final IconData? icon;
  final String? data;
  final double horizontal;
  final double vertical;
  final Color? genderColor;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: genderColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontal,
              vertical: vertical,
            ),
            child: Column(
              children: [
                Icon(
                  icon,
                  size: 80,
                ),
                Text(
                  data!.toUpperCase(),
                  style: AppTextStyle.white30W600,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
