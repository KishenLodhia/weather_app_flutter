import 'package:flutter/material.dart';
import 'package:weather_animation/weather_animation.dart';

class CloudyWidget extends StatelessWidget {
  const CloudyWidget({super.key, this.isDay = true});

  final bool isDay;

  @override
  Widget build(BuildContext context) {
    return WrapperScene(
      sizeCanvas: const Size(350, 540),
      isLeftCornerGradient: false,
      colors: isDay
          ? [
              const Color(0xff039be5),
              const Color(0xff29b6f6),
              const Color(0xff81d4fa),
            ]
          : [
              const Color(0xff263238),
              const Color(0xff263238),
              const Color(0xff546e7a),
            ],
      children: const [
        CloudWidget(
          cloudConfig: CloudConfig(
              size: 207,
              color: Color(0x99ffffff),
              icon: IconData(63056, fontFamily: 'MaterialIcons'),
              widgetCloud: null,
              x: 33,
              y: 5,
              scaleBegin: 1,
              scaleEnd: 1.1,
              scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
              slideX: 17,
              slideY: 5,
              slideDurMill: 2000,
              slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
        ),
        CloudWidget(
          cloudConfig: CloudConfig(
              size: 250,
              color: Color(0xaaffffff),
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
      ],
    );
  }
}
