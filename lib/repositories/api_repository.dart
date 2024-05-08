import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/apps/utils/assets.dart';
import 'package:weather_app/models/weather.dart';

class ApiRepository {
  static Future<WeatherData> callApiGetWether(Position? position) async {
    try {
      final dio = Dio();
      final res = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather?lat=${position?.latitude.toString()}&lon=${position?.longitude.toString()}&units=metric&appid=${MyKey.api_token}');
      final data = res.data;
      WeatherData result = WeatherData.fromMap(data);
      return result;
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<WeatherDetail>> callApiGetWetherDetail(
      Position? position) async {
    try {
      final dio = Dio();
      final res = await dio.get(
          'https://api.openweathermap.org/data/2.5/forecast?lat=${position?.latitude.toString()}&lon=${position?.longitude.toString()}&units=metric&appid=${MyKey.api_token}');
      List data = res.data['list'];
      List<WeatherDetail> result = List<WeatherDetail>.from(
          data.map((e) => WeatherDetail.fromMap(e)).toList());
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
