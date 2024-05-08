import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/page/detail/detail_page.dart';
import 'package:weather_app/page/home/home_page.dart';

class BottomNavigationCustom extends StatefulWidget {
  const BottomNavigationCustom({super.key});

  @override
  State<BottomNavigationCustom> createState() => _BottomNavigationCustomState();
}

class _BottomNavigationCustomState extends State<BottomNavigationCustom> {

  List<BottomNavigationBarItem> listItem = [
    const BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: 'Home'),
    const BottomNavigationBarItem(icon: Icon(CupertinoIcons.list_bullet),label: 'List'),
  ];

  List<Widget> listPages = [
    HomePage(),
    DetailPage()];

  int currentPage = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: listPages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        backgroundColor: Colors.white10,
        elevation: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: listItem,
        onTap: (value) => setState(() {
          currentPage = value;
        })
      ,)
    );
  }
}