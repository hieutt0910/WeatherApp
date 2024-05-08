import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/repositories/api_repository.dart';

class WeatherProvider extends ChangeNotifier {
  String location = '';
  Position? position;

  updatePosition(Position positionCurrent) {
    position = positionCurrent;
    notifyListeners();
  }

  Future<WeatherData> getWeatherCurrent() async {
    WeatherData result = await ApiRepository.callApiGetWether(position);
    location = result.name;
    notifyListeners();
    return result;
  }

  Future<List<WeatherDetail>> getWeatherCurrentDetail() async {
    List<WeatherDetail> result =
        await ApiRepository.callApiGetWetherDetail(position);
    return result;
  }
}
