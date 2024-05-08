import 'package:flutter/material.dart';
import 'package:weather_app/apps/utils/assets.dart';

class HomeWeatherIcon extends StatelessWidget {
  const HomeWeatherIcon({super.key, required this.nameIcon});
  final nameIcon ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context); 
    return Container(
      width: size.width / 1.5,
      padding: const EdgeInsets.only(left: 30,right: 30,bottom: 10,top: 30),
      child: Image.asset(
        AssetCustom.getLinkImage(nameIcon),
        fit: BoxFit.cover,),
      );
  }
}