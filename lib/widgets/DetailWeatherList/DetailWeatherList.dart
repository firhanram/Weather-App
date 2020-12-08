import 'package:flutter/material.dart';
import 'package:weather_app/widgets/DetailWeatherList/DetailWeather.dart';

class DetailWeatherList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Details',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Row(
            children: <Widget>[
              DetailWeather(
                  imageUrl: 'assets/images/humidity.png',
                  title: 'Humidity',
                  value: '89%'),
              DetailWeather(
                  imageUrl: 'assets/images/precipitation.png',
                  title: 'Precipitation',
                  value: '8%'),
              DetailWeather(
                  imageUrl: 'assets/images/wind.png',
                  title: 'Wind',
                  value: '10 km/h'),
            ],
          )
        ],
      ),
    );
  }
}
