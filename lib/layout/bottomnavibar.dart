import 'package:demo_project/screens/home_page.dart';
import 'package:demo_project/screens/learn_flutter.dart';
import 'package:demo_project/screens/locationpage.dart';
import 'package:demo_project/screens/login_page.dart';
import 'package:demo_project/screens/news_page.dart';
import 'package:flutter/material.dart';

class BottomNaviBar extends StatefulWidget {
  BottomNaviBar({super.key});
  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  //int currentPage = 1;
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    LocationPage(),
    LearnFlutter(),
    LoginPage(),
    NewsPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

          //const BottomNaviBar(),
          Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_sharp),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 1, 59, 82),
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 14, 241, 21),
        unselectedItemColor: Colors.white,
        iconSize: 20,
        onTap: _onItemTapped,
        elevation: 3,
      ),
    );
  }
}
