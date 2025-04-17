import 'package:app_maybank/slicing/chatty/theme.dart';
import 'package:app_maybank/slicing/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class ChattyPage extends StatelessWidget {
  const ChattyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(Icons.add, color: whiteColor),
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: blueColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/friend1.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 20),
                Text(
                  "Sabrina Carpenter",
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "Travel Freelancer",
                  style: TextStyle(
                    color: lightBlueColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Friends', style: titleTextStyle),
                      ChatTile(
                        imageUrl: "assets/images/friend2.png",
                        name: "Joshuer",
                        text: "Sorry, you’re not my ty...",
                        time: "Now",
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/friend3.png",
                        name: "Gabriella",
                        text: "I saw it clearly and mig...",
                        time: "2:30",
                        unread: false,
                      ),
                      SizedBox(height: 30),
                      Text('Groups', style: titleTextStyle),
                      ChatTile(
                        imageUrl: "assets/images/group1.png",
                        name: "Jakata Fair",
                        text: "Why does everyone ca...",
                        time: "11:11",
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/group2.png",
                        name: "MayBank Group",
                        text: "Here here we can go...",
                        time: "12:11",
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/group3.png",
                        name: "MayBank Group",
                        text: "Here here we can go...",
                        time: "12:11",
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/group3.png",
                        name: "MayBank Group",
                        text: "Here here we can go...",
                        time: "12:11",
                        unread: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
