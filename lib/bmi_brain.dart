import 'dart:math';

class BmiBrain {
  double calculateBmi(int weight, double height) {
    final bmi = weight / pow(height / 100, 2);
    return bmi;
  }

  String getResult(double b) {
    if (b >= 25) {
      return 'Салмагыныз ашыкча';
    } else if (b > 18.5) {
      return 'Нормалдуу';
    } else {
      return 'Кобураак жениз';
    }
  }

  String getInterpretation(double bmi) {
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
