import 'package:flutter/material.dart';
import 'package:weather_animation/weather_animation.dart';

class PartlyCloudy extends StatelessWidget {
  const PartlyCloudy({super.key});

  @override
  Widget build(BuildContext context) {
    return const WrapperScene(
      sizeCanvas: Size(380, 540),
      isLeftCornerGradient: false,
      colors: [
        Color(0xff039be5),
        Color(0xff29b6f6),
        Color(0xff81d4fa),
      ],
      children: [
        CloudWidget(
          cloudConfig: CloudConfig(
              size: 165,
              color: Color(0x42ffffff),
              icon: IconData(63056, fontFamily: 'MaterialIcons'),
              widgetCloud: null,
              x: 70,
              y: 5,
              scaleBegin: 1,
              scaleEnd: 1.1,
              scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
              slideX: 11,
              slideY: 5,
              slideDurMill: 2000,
              slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
        ),
        CloudWidget(
          cloudConfig: CloudConfig(
              size: 160,
              color: Color(0x2fffffff),
              icon: IconData(63056, fontFamily: 'MaterialIcons'),
              widgetCloud: null,
              x: 3,
              y: 5,
              scaleBegin: 1,
              scaleEnd: 1,
              scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
              slideX: 11,
              slideY: 5,
              slideDurMill: 2000,
              slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
        ),
      ],
    );
  }
}
