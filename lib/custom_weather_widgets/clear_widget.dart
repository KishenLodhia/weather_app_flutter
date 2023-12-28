import 'package:flutter/material.dart';
import 'package:weather_animation/weather_animation.dart';

class ClearWidget extends StatelessWidget {
  const ClearWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const WrapperScene(
      sizeCanvas: Size(350, 540),
      isLeftCornerGradient: false,
      colors: [
        Color(0xff263238),
        Color(0xff263238),
        Color(0xff546e7a),
      ],
      children: [],
    );
  }
}
