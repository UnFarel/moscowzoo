import 'package:flutter/material.dart';
import 'package:moscowzoo/const.dart';
import 'package:moscowzoo/pages/Map.dart';
import 'package:moscowzoo/pages/other.dart';
import 'package:moscowzoo/pages/animals.dart';
import 'package:moscowzoo/pages/HomePage.dart';


class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => IndexPageState();
}

class IndexPageState extends State<IndexPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    MapPage(),
    AnimalsPage(),
    OtherPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigateBottomBar,
        unselectedItemColor: Color(AppTextColor), selectedItemColor: Color(AppMainColor),
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(AppSecondColor),
        items: [BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Карта'),
          BottomNavigationBarItem(icon: Icon(Icons.cruelty_free), label: 'Животные'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Ещё'),]
      ),
    );
  }
}
