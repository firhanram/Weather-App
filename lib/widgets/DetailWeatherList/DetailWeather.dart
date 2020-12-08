import 'package:flutter/material.dart';

class DetailWeather extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String value;

  DetailWeather({this.imageUrl, this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: 1,
      child: Card(
        elevation: 2,
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage(imageUrl),
                width: 45,
                height: 45,
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      value,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
