import 'package:app_maybank/dasar/menu_page.dart';
import 'package:app_maybank/dasar/root_page.dart';
import 'package:app_maybank/pages/about_page.dart';
import 'package:app_maybank/pages/home_page.dart';
import 'package:app_maybank/slicing/chatty/chatty_page.dart';
import 'package:app_maybank/slicing/shoes/shoes_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleNavBar extends StatefulWidget {
  const GoogleNavBar({super.key});

  @override
  State<GoogleNavBar> createState() => _GoogleNavBarState();
}

class _GoogleNavBarState extends State<GoogleNavBar> {
  int currentPage = 0;
  List<Widget> pages = [ChattyPage(), ShoesPage(), AboutPage(), RootPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: GNav(
            gap: 8,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.deepPurple.shade800,
            padding: EdgeInsets.all(16),
            tabBorderRadius: 30,
            curve: Curves.easeInOut,
            tabBackgroundGradient: LinearGradient(
              colors: [Color(0xFF66145F), Colors.deepPurpleAccent],
            ),
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            haptic: true,
            tabs: [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.favorite, text: 'Likes'),
              GButton(icon: Icons.search, text: 'Search'),
              GButton(icon: Icons.settings, text: 'Profile'),
            ],
            onTabChange: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
      ),
      body: pages[currentPage],
    );
  }
}
