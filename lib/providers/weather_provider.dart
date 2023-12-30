import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/models/weather_response.dart';
import 'package:http/http.dart' as http;

class WeatherProvider extends ChangeNotifier {
  final String _apiKey = dotenv.get('WEATHER_API_KEY');
  String location = 'Brisbane';
  String aqi = 'yes';

  WeatherProvider(this.location, bool aqi) {
    this.aqi = aqi ? 'yes' : 'no';

    getLatestWeather();
  }

  Future<WeatherResponse?> getLatestWeather() async {
    Uri request = Uri.http(
      'api.weatherapi.com',
      '/v1/current.json',
      {'key': _apiKey, 'q': location, 'aqi': aqi},
    );
    var response = await http.get(request);

    if (response.statusCode != 200) {
      return null;
    }
    print(jsonDecode(response.body));
    return WeatherResponse.fromJson(jsonDecode(response.body));
  }
}
