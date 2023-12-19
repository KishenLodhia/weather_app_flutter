import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/components/forcast_widget.dart';
import 'package:weather_app/components/weather_graphic.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static List<DateTime> dates =
      List.generate(12, (index) => DateTime.now().add(Duration(days: index)));
  static List<int> highValues =
      List.generate(12, (index) => Random().nextInt(13) + 23);
  static List<int> lowValues =
      List.generate(12, (index) => Random().nextInt(13) + 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElasticIn(
            duration: const Duration(milliseconds: 1000),
            animate: true,
            child: const WeatherGraphic(
                image: 'lib/images/thunderstorm.png',
                weatherType: 'Thunderstorm'),
          ),
          const SizedBox(height: 20),
          Forcast(lows: lowValues, highs: highValues, dates: dates),
          const Divider(
            thickness: 0.5,
            endIndent: 50,
            indent: 50,
          )
        ],
      ),
    );
  }
}
