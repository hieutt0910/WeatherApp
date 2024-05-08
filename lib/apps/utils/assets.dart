import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:ui';
const linkAssets = 'assets/images/weathers/';
class MyKey {
  static const String api_token = '5fd6f6fad8ac9a8ebdbfa9c79b01c899';
}
class AssetCustom {
  static String getLinkImage(String name) => '${linkAssets}${name.replaceAll(' ', '').toLowerCase()}.png';
}

Widget createTemp(num temp, {double size = 90}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        temp.toString(),
        style: TextStyle(
          fontSize: size,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        '0',
        style: TextStyle(
          fontSize: size / 3,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
