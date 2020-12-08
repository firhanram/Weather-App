import 'package:flutter/material.dart';

class MainWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightBlue[900],
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: 160,
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            Text('Monday, 07 December 2020',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.normal)),
            Align(
              alignment: Alignment.topRight,
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/cloudy.png'),
                  ),
                  Text(
                    'Partly Cloudy',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.00),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tangerang, Banten',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    '27° C',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    );
  }
}
