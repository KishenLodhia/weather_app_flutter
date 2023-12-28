import 'dart:math';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_animation/weather_animation.dart';
import 'package:weather_app/components/decoration.dart';
import 'package:weather_app/components/forcast_widget.dart';
import 'package:weather_app/custom_weather_widgets/heavy_rain_widget.dart';
import 'package:weather_app/custom_weather_widgets/heavy_snow_widget.dart';
import 'package:weather_app/custom_weather_widgets/light_snow_widget.dart';
import 'package:weather_app/custom_weather_widgets/moderate_snow_widget.dart';
import 'package:weather_app/custom_weather_widgets/overcast_widget.dart';
import 'package:weather_app/custom_weather_widgets/thunderstorm_widget.dart';
import 'package:weather_app/models/weather_response.dart';
import 'package:weather_app/providers/weather_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static List<DateTime> dates =
      List.generate(12, (index) => DateTime.now().add(Duration(days: index)));
  static List<int> highValues =
      List.generate(12, (index) => Random().nextInt(13) + 23);
  static List<int> lowValues =
      List.generate(12, (index) => Random().nextInt(13) + 10);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherResponse? weather;
  WeatherScene? weatherScene;
  double blurValue = 0;
  Color blurColor = Colors.white;
  double colorOpacity = 0;

  final ScrollController _scrollController = ScrollController();

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    var temp = await Provider.of<WeatherProvider>(context).getLatestWeather();
    setState(() {
      weather = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (weather == null) {
      return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    num? weatherCondition = weather?.current?.condition?.code;

    return Scaffold(
      body: NotificationListener(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollUpdateNotification) {
            setState(() {
              if (scrollNotification.metrics.pixels < 100) {
                blurValue = 0;
                blurColor = Colors.white;
                colorOpacity = 0;
              }
              if (scrollNotification.metrics.pixels >= 100) {
                blurValue = 10;
                blurColor = Colors.black26;
                colorOpacity = 0.2;
              }
            });
          }
          return true;
        },
        child: Stack(
          children: [
            Blur(
              colorOpacity: colorOpacity,
              blurColor: blurColor,
              blur: blurValue,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: const HeavySnowWidget(),
                // child: WeatherSceneWidget(
                //   weatherScene: weatherScene ?? WeatherScene.sunset,
                // ),
              ),
            ),
            SingleChildScrollView(
              controller: _scrollController,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 400,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        '${weather?.current!.tempC?.toStringAsFixed(0)}℃',
                        style:
                            const TextStyle(fontSize: 90, color: Colors.white),
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton.icon(
                          onPressed: null,
                          label: Text(
                            weather?.location?.name ?? 'Unknown',
                            style: const TextStyle(color: Colors.white),
                          ),
                          icon: const Icon(
                            Icons.my_location_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Text('${weather?.current?.condition?.text}'),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Divider(
                    thickness: 0.5,
                    endIndent: 50,
                    indent: 50,
                  ),
                  const Text('10 DAY FORCAST'),
                  Forcast(
                      lows: HomeScreen.lowValues,
                      highs: HomeScreen.highValues,
                      dates: HomeScreen.dates),
                  const Divider(
                    thickness: 0.5,
                    endIndent: 50,
                    indent: 50,
                  ),
                  Row(
                    children: [
                      InfoCard(
                        name: 'HUMIDITY',
                        information: '${weather?.current?.humidity}%',
                      ),
                      InfoCard(
                        name: 'UV INDEX',
                        information: '${weather?.current?.uv}',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InfoCard(
                        name: 'FEELS LIKE',
                        information: '${weather?.current?.feelslikeC}℃',
                      ),
                      InfoCard(
                        name: 'WIND SPEED',
                        information:
                            '${weather?.current?.windKph} kmph ${weather?.current?.windDir}',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InfoCard(
                        name: 'PRESSURE',
                        information: '${weather?.current?.pressureIn} mb',
                      ),
                      const InfoCard(
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
                  Row(
                    children: [
                      InfoCard(
                        name: 'VISIBILITY',
                        information: '${weather?.current?.visKm} km',
                      ),
                      InfoCard(
                        name: 'PRECIPITATION',
                        information: '${weather?.current?.precipMm} mm',
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
