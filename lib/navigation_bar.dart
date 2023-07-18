import 'package:flutter/material.dart';
import 'package:instagram1/pages/home_screen.dart';
import 'package:instagram1/pages/search_screen.dart';

class welcomePage extends StatefulWidget {
  welcomePage({Key? key}) : super(key: key);

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  var screens = [
    homeScreen(),
    searchScreen(),
    Card(
      elevation: 10,
      color: Colors.white,
      child: Center(
          child: Text(
        'favorate',
        style: TextStyle(color: Colors.black87),
      )),
    ),
    Card(
      elevation: 10,
      color: Colors.white,
      child: Center(
          child: Text(
        'favorate',
        style: TextStyle(color: Colors.black87),
      )),
    ),
    Card(
      elevation: 10,
      color: Colors.white,
      child: Center(
          child: Text(
        'favorate',
        style: TextStyle(color: Colors.black87),
      )),
    ),
  ];
  var selectedindex = 0;

  void itemTap(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex: selectedindex,
        onTap: itemTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: '')
        ],
      ),
    );
  }
}
