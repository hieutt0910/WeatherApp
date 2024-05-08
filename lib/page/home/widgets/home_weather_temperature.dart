import 'package:flutter/material.dart';

class HomeWeatherTemperature extends StatelessWidget {
  const HomeWeatherTemperature({super.key, required this.temperature});
  final num temperature ;
  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  temperature.toString(),
                  style: const TextStyle(
                    fontSize: 90,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                        
                ),
                const Text(
                  '0',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                        
                ),
              ],
            );
  }
}