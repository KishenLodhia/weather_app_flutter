import 'package:flutter/material.dart';
import 'package:weather_app/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: MaterialApp(
        theme: ThemeData(textTheme: Typography.whiteHelsinki),
        home: const HomeScreen(),
      ),
    );
  }
}
