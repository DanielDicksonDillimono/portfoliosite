import 'package:flutter/material.dart';

abstract final class Dimensions {
  const Dimensions();
  static const double padding = 16.0;
  static const double margin = 16.0;
  static const double borderRadius = 8.0;
  static const double iconSize = 24.0;
  static const double fontSize = 14.0;

 factory Dimensions.of(BuildContext context) {
    switch (MediaQuery.of(context).size.width) {
      case < 600:
        return Mobile();
      case < 1200:
        return Desktop();
      default:
        return Desktop();
    }
  }
}

final class Desktop extends Dimensions {
  
}

final class Mobile extends Dimensions {

}