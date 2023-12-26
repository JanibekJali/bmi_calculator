import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/constants/decoration/app_decoration.dart';
import 'package:bmi_calculator/constants/elevatebuttom.dart';
import 'package:bmi_calculator/constants/text_style/app_text_style.dart';
import 'package:bmi_calculator/views/result_view.dart';
import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:bmi_calculator/widgets/weight_age_widget.dart';
import 'package:flutter/material.dart';

enum GenderEnum { male, female }

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int weight = 60;

  int age = 25;
  double heightValue = 180;
  Color maleColor = AppColors.grey;
  Color femaleColor = AppColors.grey;

  changeGenderColor(GenderEnum gender) {
    if (gender == GenderEnum.male) {
      maleColor = AppColors.red;
      femaleColor = AppColors.grey;
    } else if (gender == GenderEnum.female) {
      femaleColor = AppColors.red;
      maleColor = AppColors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GenderWidget(
                genderColor: maleColor,
                data: 'male',
                icon: Icons.male,
                onTap: () {
                  setState(() {
                    changeGenderColor(GenderEnum.male);
                  });
                },
              ),
              GenderWidget(
                genderColor: femaleColor,
                data: 'female',
                icon: Icons.female,
                onTap: () {
                  setState(() {
                    changeGenderColor(GenderEnum.female);
                  });
                },
                horizontal: 10,
              ),
            ],
          ),
          Container(
            color: AppColors.grey,
            child: Column(
              children: [
                Text(
                  heightValue.toStringAsFixed(0),
                  style: AppTextStyle.white60W600,
                ),
                Slider(
                  value: heightValue,
                  onChanged: (double adamdynReaksiyasy) {
                    setState(() {});
                    heightValue = adamdynReaksiyasy;
                  },
                  max: 220,
                  min: 0,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WeightAgeWidget(
                  text: 'Weight',
                  weightAgeText: weight,
                  onPlus: () {
                    setState(() {
                      weight++;
                    });
                  },
                  onMinus: () {
                    setState(() {
                      weight--;
                    });
                  }),
              WeightAgeWidget(
                  text: 'Age',
                  weightAgeText: age,
                  onPlus: () {
                    setState(() {
                      age++;
                    });
                  },
                  onMinus: () {
                    setState(() {
                      age--;
                    });
                  }),
            ],
          ),
          Buttom(
            color_: Colors.red,
            lable: 'next page',
            evatedButton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultView(
                            height: heightValue,
                            weight: weight,
                          )));
            },
          )
        ],
      ),
    );
  }
}
