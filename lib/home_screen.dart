import 'dart:math';
import 'package:flutter/material.dart';
import 'package:weather_animation/weather_animation.dart';
import 'package:weather_app/components/decoration.dart';
import 'package:weather_app/components/forcast_widget.dart';

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
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: const WeatherSceneWidget(
              weatherScene: WeatherScene.stormy,
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ElasticIn(
                //   duration: const Duration(milliseconds: 1000),
                //   animate: true,
                //   child: const WeatherGraphic(
                //       image: 'lib/images/thunderstorm.png',
                //       weatherType: 'Thunderstorm'),
                // ),
                const SizedBox(
                  height: 400,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      '23℃',
                      style: TextStyle(fontSize: 90, color: Colors.white),
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  label: const Text(
                    'Brisbane',
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: const Icon(
                    Icons.my_location_outlined,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 20),
                const Divider(
                  thickness: 0.5,
                  endIndent: 50,
                  indent: 50,
                ),
                const Text('10 DAY FORCAST'),
                Forcast(lows: lowValues, highs: highValues, dates: dates),
                const Divider(
                  thickness: 0.5,
                  endIndent: 50,
                  indent: 50,
                ),
                const Row(
                  children: [
                    InfoCard(
                      name: 'HUMIDITY',
                      information: '87%',
                    ),
                    InfoCard(
                      name: 'UV INDEX',
                      information: '2 - Low',
                    ),
                  ],
                ),
                const Row(
                  children: [
                    InfoCard(
                      name: 'FEELS LIKE',
                      information: '22℃',
                    ),
                    InfoCard(
                      name: 'WIND SPEED',
                      information: '15 kmph NE',
                    ),
                  ],
                ),
                const Row(
                  children: [
                    InfoCard(
                      name: 'PRESSURE',
                      information: '1015 hPa',
                    ),
                    InfoCard(
                      name: 'DUE POINT',
                      information: '18℃',
                    ),
                  ],
                ),
                const Row(
                  children: [
                    InfoCard(
                      name: 'SUN RISE',
                      information: '5:47 am',
                    ),
                    InfoCard(
                      name: 'SUN SET',
                      information: '6:50 pm',
                    ),
                  ],
                ),
                const Row(
                  children: [
                    InfoCard(
                      name: 'VISIBILITY',
                      information: '15 km',
                    ),
                    InfoCard(
                      name: 'MOON PHASE',
                      information: 'Wax Cres',
                    ),
                  ],
                ),
                const Row(
                  children: [
                    InfoCard(
                      name: 'AIR QUALITY',
                      information: '35 (Good)',
                    ),
                    InfoCard(
                      name: 'ALERTS',
                      information: 'None',
                    ),
                  ],
                ),

                // Expanded(
                //   child: GridView.count(
                //     padding: const EdgeInsets.all(10),
                //     crossAxisCount: 2,
                //     children: [
                //       Container(
                //         decoration: Decorations().boxDecoration,
                //         child: const WeatherSceneWidget(
                //           weatherScene: WeatherScene.sunset,
                //         ),
                //       )
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.name,
    required this.information,
  });

  final String name;
  final String information;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: Decorations().boxDecoration,
        child: Row(
          children: [
            FittedBox(
              child: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  child: Text(
                    information,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
