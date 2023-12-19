import 'package:flutter/material.dart';

class WeatherGraphic extends StatelessWidget {
  final String image;
  final String weatherType;

  const WeatherGraphic(
      {super.key, required this.image, required this.weatherType});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 350,
      child: Card(
        elevation: 20,
        shape: const CircleBorder(),
        color: Colors.green.shade50,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: 300,
              child: Image.asset(image),
            ),
            Text(weatherType)
          ],
        ),
      ),
    );
  }
}
