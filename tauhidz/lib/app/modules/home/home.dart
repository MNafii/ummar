import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tauhidz/app/modules/dashboard/dashboard.dart';
import 'package:tauhidz/app/modules/Navbar/profilanak/profilanak.dart';
import 'package:tauhidz/app/modules/Navbar/profilortu/profilortu.dart';

import '../../style/app_color.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() { 
      _selectedIndex = index;
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          SafeArea(child: Dashboard()),
          SafeArea(child: Profilanak()),
          SafeArea(child: Profilortu()),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: GNav(
              gap: 8,
              activeColor: Colors.white,
              tabBackgroundColor: AppColor.primary,
              padding: EdgeInsets.all(16),
              selectedIndex: _selectedIndex,
              onTabChange: _onItemTapped,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.person_sharp,
                  text: 'Profile Anak',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile Ortu',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
