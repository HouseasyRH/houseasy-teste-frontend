import 'package:flutter/cupertino.dart';

class DetailsController with ChangeNotifier {
  String convertPesToMeters(String pes) {
    double value = double.parse(pes);
    double result = value * 0.3048;

    return result.toStringAsFixed(2);
  }

  String convertLibrasToKilograms(String lbs) {
    double value = double.parse(lbs);
    double result = value * 0.453592;

    return result.toStringAsFixed(2);
  }
}
