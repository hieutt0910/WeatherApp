import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeWeatherLocation extends StatelessWidget {
  const HomeWeatherLocation({super.key, required this.location});
  final String location;
  @override
  Widget build(BuildContext context) {
    final df = DateFormat('dd-MM-yyyy');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/icons/Vector.png'),
            const SizedBox(width: 10,),
            Text(
              location,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 35
              ),
            )
          ],
        ),
        const SizedBox(height: 17,),
        Text(
          df.format(DateTime.now()),
          style: const TextStyle(
            fontSize: 32,
            color: Colors.white
          ),)
      ],
    );
  }
}