import 'package:flutter/material.dart';
import 'package:weather_animation/weather_animation.dart';

class SunnyWidget extends StatelessWidget {
  const SunnyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const WrapperScene(
      sizeCanvas: Size(350, 540),
      isLeftCornerGradient: false,
      colors: [
        Color(0xffffb300),
        Color(0xff039be5),
        Color(0xff0277bd),
      ],
      children: [
        SunWidget(
          sunConfig: SunConfig(
              width: 242,
              blurSigma: 17,
              blurStyle: BlurStyle.solid,
              isLeftLocation: true,
              coreColor: Color(0xfff57c00),
              midColor: Color(0xffffee58),
              outColor: Color(0xffffa726),
              animMidMill: 1500,
              animOutMill: 1500),
        ),
      ],
    );
  }
}
