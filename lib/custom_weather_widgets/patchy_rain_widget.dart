import 'package:flutter/material.dart';
import 'package:weather_animation/weather_animation.dart';

class PatchyRainWidget extends StatelessWidget {
  const PatchyRainWidget({super.key, this.isDay = true});

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
      children: [
        const CloudWidget(
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
        const CloudWidget(
          cloudConfig: CloudConfig(
              size: 171,
              color: Color(0xaaffffff),
              icon: IconData(63056, fontFamily: 'MaterialIcons'),
              widgetCloud: null,
              x: 0,
              y: 5,
              scaleBegin: 1,
              scaleEnd: 1.1,
              scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
              slideX: 11,
              slideY: 5,
              slideDurMill: 2000,
              slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
        ),
        RainWidget(
          rainConfig: RainConfig(
              count: 5,
              lengthDrop: 11,
              widthDrop: 4,
              color: isDay ? Colors.white : const Color(0xc878909c),
              isRoundedEndsDrop: true,
              widgetRainDrop: null,
              fallRangeMinDurMill: 500,
              fallRangeMaxDurMill: 1500,
              areaXStart: 120,
              areaXEnd: 190,
              areaYStart: 215,
              areaYEnd: 540,
              slideX: 2,
              slideY: 0,
              slideDurMill: 2000,
              slideCurve: const Cubic(0.40, 0.00, 0.20, 1.00),
              fallCurve: const Cubic(0.55, 0.09, 0.68, 0.53),
              fadeCurve: const Cubic(0.95, 0.05, 0.80, 0.04)),
        ),
      ],
    );
  }
}
