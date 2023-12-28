import 'package:flutter/material.dart';
import 'package:weather_animation/weather_animation.dart';

class ThunderstormWidget extends StatelessWidget {
  const ThunderstormWidget({super.key});

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
        ThunderWidget(
          thunderConfig: ThunderConfig(
              thunderWidth: 10,
              blurSigma: 20,
              blurStyle: BlurStyle.solid,
              color: Color(0x99ffee58),
              flashStartMill: 50,
              flashEndMill: 300,
              pauseStartMill: 50,
              pauseEndMill: 6000,
              points: [Offset(110.0, 210.0), Offset(120.0, 240.0)]),
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
        RainWidget(
          rainConfig: RainConfig(
              count: 25,
              lengthDrop: 20,
              widthDrop: 4,
              color: Color(0x9978909c),
              isRoundedEndsDrop: true,
              widgetRainDrop: null,
              fallRangeMinDurMill: 400,
              fallRangeMaxDurMill: 1500,
              areaXStart: 20,
              areaXEnd: 300,
              areaYStart: 215,
              areaYEnd: 540,
              slideX: 2,
              slideY: 0,
              slideDurMill: 2000,
              slideCurve: Cubic(0.40, 0.00, 0.20, 1.00),
              fallCurve: Cubic(0.55, 0.09, 0.68, 0.53),
              fadeCurve: Cubic(0.95, 0.05, 0.80, 0.04)),
        ),
      ],
    );
  }
}
