import 'package:app_maybank/pages/about_page.dart';
import 'package:app_maybank/pages/home_page.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // ini untuk botton nav bar
  int currentPage = 0;

  // widget menu list view
  List<Widget> pages = [HomePage(), AboutPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Training',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      // drawer
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(child: Image.asset('assets/images/logo.png')),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                leading: Icon(Icons.home, color: Colors.white),
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutPage()),
                  );
                },
                leading: Icon(Icons.info, color: Colors.white),
                title: Text(
                  "About",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(),

      // floating action button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),

      // bottom navigation bar
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        onDestinationSelected: (int index) {
          // debugPrint('Selected index: $index');
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
      // body: HomePage(),
      body: pages[currentPage],
    );
  }
}
