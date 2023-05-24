import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Halaman 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Halaman 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Halaman 3',
          ),
        ],
      ),
    );
  }
}
