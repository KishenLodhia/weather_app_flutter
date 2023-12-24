import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Forcast extends StatelessWidget {
  final List<int> lows;
  final List<int> highs;
  final List<DateTime> dates;

  const Forcast(
      {super.key,
      required this.lows,
      required this.highs,
      required this.dates});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 40,
                width: 60,
                child: Center(
                  child: Text(
                    DateFormat('d MMM').format(dates[index]),
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Text(
                '⇑${highs[index]}℃',
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              Text(
                '⇓${lows[index]}℃',
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
