import 'package:flutter/material.dart';

class HomeWeatherDetail extends StatelessWidget {
  const HomeWeatherDetail({super.key,required this.windSpeed,required this.humidity});
  final num windSpeed;
  final num humidity;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset('assets/images/icons/Vector-1.png'),
              const SizedBox(height: 5,),
              Text(
                    '$windSpeed Km/h',
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  )
            ],
          ),
          const SizedBox(width: 120,),
          Column(children: [
              Image.asset('assets/images/icons/humidity.png'),
              const SizedBox(height: 5,),
              Text(
                    '$humidity%',
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  )
            ],)
        ],
      ),
    );
  }
}