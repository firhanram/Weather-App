import 'package:flutter/material.dart';
import 'package:weather_app/models/EstimateWeather.dart';

class EstimateWeatherList extends StatelessWidget {
  final List<EstimateWeather> estimates = [
    EstimateWeather(
        day: 'Tuesday',
        weatherIcon: 'assets/images/cloudy.png',
        weatherType: 'Cloudy',
        temperature: '27°'),
    EstimateWeather(
        day: 'Wednesday',
        weatherIcon: 'assets/images/cloudy.png',
        weatherType: 'Cloudy',
        temperature: '27°'),
    EstimateWeather(
        day: 'Thursday',
        weatherIcon: 'assets/images/cloudy.png',
        weatherType: 'Cloudy',
        temperature: '27°'),
    EstimateWeather(
        day: 'Friday',
        weatherIcon: 'assets/images/cloudy.png',
        weatherType: 'Cloudy',
        temperature: '27°'),
    EstimateWeather(
        day: 'Saturday',
        weatherIcon: 'assets/images/cloudy.png',
        weatherType: 'Cloudy',
        temperature: '27°'),
    EstimateWeather(
        day: 'Sunday',
        weatherIcon: 'assets/images/cloudy.png',
        weatherType: 'Cloudy',
        temperature: '27°'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Next 7 Days',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Container(
            height: 300,
            child: ListView.builder(
                itemCount: estimates.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.lightBlue[900],
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            estimates[index].day,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(
                            children: <Widget>[
                              Image(
                                image: AssetImage(estimates[index].weatherIcon),
                                width: 50,
                                height: 50,
                              ),
                              Text(
                                estimates[index].weatherType,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.yellow[400],
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Text(estimates[index].temperature,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.cyan[50],
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
