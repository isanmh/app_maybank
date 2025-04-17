import 'package:app_maybank/dasar/clipRRect/clip_rect.dart';
import 'package:app_maybank/dasar/dasar_page.dart';
import 'package:app_maybank/dasar/menu_page.dart';
import 'package:app_maybank/dasar/root_page.dart';
import 'package:app_maybank/navigations/google_nav_bar.dart';
import 'package:app_maybank/pages/home_page.dart';
import 'package:app_maybank/slicing/chatty/chatty_page.dart';
import 'package:app_maybank/slicing/shoes/shoes_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      routes: {
        '/': (context) => const GoogleNavBar(),
        '/dasar_page': (context) => const DasarPage(),
        '/home': (context) => const HomePage(),
        '/clip': (context) => const ClipRRectExample(),
      },
      // home: const ShoesPage(),
    );
  }
}
