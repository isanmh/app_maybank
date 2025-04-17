import 'package:app_maybank/dasar/dasar_page.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // cara 1 context tanpa route
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return const DasarPage();
                //     },
                //   ),
                // );
                // cara 2 pushNamed
                Navigator.pushNamed(context, '/dasar_page');
              },
              child: const Text('Dasar Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/clip');
              },
              child: const Text('Clip RRect'),
            ),
          ],
        ),
      ),
    );
  }
}
