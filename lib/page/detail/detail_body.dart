import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/apps/utils/assets.dart';
import 'package:weather_app/models/weather.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, required this.listData});

  final List<WeatherDetail> listData;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) {
          DateTime dateTime = DateTime.parse(listData[index].dt_txt);
          String formatDate = DateFormat('EEEE').format(dateTime);
          String formatTime = DateFormat('HH:MM').format(dateTime);

          return Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white30, borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        createTemp(listData[index].main.temp.round(), size: 30),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          listData[index].weather.main,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      formatDate,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[700]),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      formatTime,
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                )),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 4,
                  child: Image.asset(
                    AssetCustom.getLinkImage(listData[index].weather.main),
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: 20);
  }
}
