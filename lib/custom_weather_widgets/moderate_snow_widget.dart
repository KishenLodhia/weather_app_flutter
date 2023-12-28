import 'package:flutter/material.dart';
import 'package:weather_animation/weather_animation.dart';

class ModerateSnowWidget extends StatelessWidget {
  const ModerateSnowWidget({super.key, this.isDay = true});

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
        CloudWidget(
          cloudConfig: CloudConfig(
              size: 171,
              color: Color(0xaaffffff),
              icon: IconData(63056, fontFamily: 'MaterialIcons'),
              widgetCloud: null,
              x: 0,
              y: 47,
              scaleBegin: 1,
              scaleEnd: 1.1,
              scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
              slideX: 11,
              slideY: 5,
              slideDurMill: 2000,
              slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
        ),
        SnowWidget(
          snowConfig: SnowConfig(
              count: 22,
              size: 20,
              color: Color(0xb3ffffff),
              icon: IconData(62742, fontFamily: 'MaterialIcons'),
              widgetSnowflake: null,
              areaXStart: 10,
              areaXEnd: 300,
              areaYStart: 200,
              areaYEnd: 540,
              waveRangeMin: 20,
              waveRangeMax: 110,
              waveMinSec: 5,
              waveMaxSec: 20,
              waveCurve: Cubic(0.45, 0.05, 0.55, 0.95),
              fadeCurve: Cubic(0.60, 0.04, 0.98, 0.34),
              fallMinSec: 10,
              fallMaxSec: 60),
        ),
      ],
    );
  }
}
