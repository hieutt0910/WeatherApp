import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/apps/config/theme_custom.dart';
import 'package:weather_app/page/bottom_navigation_custom/bottom_navigation_custom.dart';
import 'package:weather_app/page/home/home_page.dart';
import 'package:weather_app/providers/weather_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.positionCurrent});

  final Position positionCurrent;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider()..updatePosition(positionCurrent),
      child: MaterialApp(
        theme: ThemeCuston.themeLight,
        debugShowCheckedModeBanner: false,
        home: const BottomNavigationCustom(),
      ),
    );
  }
}
