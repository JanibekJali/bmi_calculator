import 'package:bmi_calculator/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiCalcator());
}

class BmiCalcator extends StatelessWidget {
  const BmiCalcator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
