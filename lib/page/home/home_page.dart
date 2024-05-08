import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/page/home/widgets/home_detail_weather.dart';
import 'package:weather_app/page/home/widgets/home_location.dart';
import 'package:weather_app/page/home/widgets/home_weather_icon.dart';
import 'package:weather_app/page/home/widgets/home_weather_temperature.dart';
import 'package:weather_app/providers/weather_provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherProvider>().getWeatherCurrent;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff1D6CF3),
              Color(0xff19D2FE),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            )
        ),
        child: FutureBuilder(
          future: context.read<WeatherProvider>().getWeatherCurrent(),
          initialData: null,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if( !snapshot.hasData){
              return Container(
                child: Text('Khong co du lieu'),
              );
            }
            WeatherData data = snapshot.data as WeatherData;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeWeatherIcon(nameIcon: data.weather[0].main),
                HomeWeatherTemperature(temperature: data.main.temp.round()),
                HomeWeatherLocation(location: data.name,),
                HomeWeatherDetail(windSpeed: data.wind.speed, humidity: data.main.humidity)
              ],
          );
          },)
      ),
    );
  }
}