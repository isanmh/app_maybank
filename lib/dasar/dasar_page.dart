import 'package:flutter/material.dart';

class DasarPage extends StatefulWidget {
  const DasarPage({super.key});

  @override
  State<DasarPage> createState() => _DasarPageState();
}

class _DasarPageState extends State<DasarPage> {
  // variable state
  bool isSwitch = false; // ini state awal ketika app jalan
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("L O G O"),
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        leading: IconButton(
          onPressed: () {
            // pop up ke halaman sebelumnya
            Navigator.pop(context);
            // Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.blue,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.blue,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.blue,
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Image.asset("assets/images/logo.png"),
            SizedBox(height: 10),
            Divider(color: Colors.black, height: 10),
            Container(
              // (kondisi) ? true : false
              color: isSwitch ? Colors.green : Colors.blue,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: Center(
                child: Text(
                  "Text Widgets",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            // Elevated, Text, Outlined Button
            ElevatedButton(
              onPressed: () {
                debugPrint("Elevated Btn di klik");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: (isCheck == false) ? Colors.blue : Colors.red,
              ),
              child: Text(
                "Elevated Btn",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outlined Btn di klik");
              },
              child: Text(
                "Outlined Btn",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text Btn di klik");
              },
              child: Text(
                "Text Btn",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // Row and Column
            GestureDetector(
              onTap: () {
                debugPrint("Row Widget di klik");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.anchor, color: Colors.blue),
                  Text("Row Widget"),
                  Icon(Icons.anchor, color: Colors.blue),
                ],
              ),
            ),

            // switch, checkbox
            Switch(
              value: isSwitch,
              onChanged: (bool newValue) {
                setState(() {
                  isSwitch = newValue;
                });
              },
            ),
            Checkbox(
              value: isCheck,
              onChanged: (bool? newValue) {
                setState(() {
                  isCheck = newValue;
                });
              },
            ),

            // image Network
            Image.network(
              "https://reqres.in/img/faces/7-image.jpg",
              width: 400,
              height: 500,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
