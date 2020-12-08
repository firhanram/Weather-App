import 'package:flutter/material.dart';
import 'package:weather_app/widgets/DetailWeatherList/DetailWeatherList.dart';
import 'package:weather_app/widgets/MainWeather.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 3,
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: <Widget>[MainWeather(), DetailWeatherList()],
        ),
      ),
    );
  }
}
