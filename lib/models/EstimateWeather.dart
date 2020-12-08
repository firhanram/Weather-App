import 'package:flutter/material.dart';

class EstimateWeather {
  final String day;
  final String weatherIcon;
  final String weatherType;
  final String temperature;

  EstimateWeather(
      {@required this.day,
      @required this.weatherIcon,
      @required this.weatherType,
      @required this.temperature});
}
