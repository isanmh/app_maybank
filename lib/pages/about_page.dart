import 'package:flutter/material.dart';

int item = 0;

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: item,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('item ${(index + 1)}'),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.select_all),
          onTap: () {
            debugPrint("Item ${(index + 1)} tapped");
          },
        );
      },
    );
  }
}
