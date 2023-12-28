import 'package:flutter/material.dart';
import 'package:weather_animation/weather_animation.dart';

class OvercastWidget extends StatelessWidget {
  const OvercastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const WrapperScene(
      sizeCanvas: Size(350, 540),
      isLeftCornerGradient: false,
      colors: [
        Color(0xff2196f3),
        Color(0xff4fc3f7),
        Color(0xff4fc3f7),
      ],
      children: [
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
              size: 250,
              color: Color(0x72ffffff),
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
              size: 146,
              color: Color(0xaaffffff),
              icon: IconData(63056, fontFamily: 'MaterialIcons'),
              widgetCloud: null,
              x: 2,
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
              size: 146,
              color: Color(0xaaffffff),
              icon: IconData(63056, fontFamily: 'MaterialIcons'),
              widgetCloud: null,
              x: 2,
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
              size: 73,
              color: Color(0xaeffffff),
              icon: IconData(63056, fontFamily: 'MaterialIcons'),
              widgetCloud: null,
              x: 241,
              y: 0,
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
              size: 73,
              color: Color(0xaeffffff),
              icon: IconData(63056, fontFamily: 'MaterialIcons'),
              widgetCloud: null,
              x: 241,
              y: 0,
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
              size: 53,
              color: Color(0xaaffffff),
              icon: IconData(63056, fontFamily: 'MaterialIcons'),
              widgetCloud: null,
              x: 125,
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
              size: 53,
              color: Color(0xaaffffff),
              icon: IconData(63056, fontFamily: 'MaterialIcons'),
              widgetCloud: null,
              x: 125,
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
