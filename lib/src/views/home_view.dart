import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Paginas
import 'package:space_x/src/views/about_view.dart';
import 'package:space_x/src/views/launches_views.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPageIndex = 0;
  final List<Widget> _pages = [
    Launches(),
    AboutPage(),
  ];

  changePage(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: changePage,
        currentIndex: _currentPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.rocket),
            label: 'Lançamentos',
          ),
          BottomNavigationBarItem(
            label: 'Sobre',
            icon: Icon(CupertinoIcons.info),
          )
        ],
      ),
    );
  }
}
