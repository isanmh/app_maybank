import 'package:app_maybank/slicing/chatty/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  // parameter ChatTile
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  const ChatTile({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.text,
    required this.time,
    required this.unread,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(imageUrl, height: 55, width: 55),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: titleTextStyle),
                Text(
                  text,
                  style:
                      unread
                          ? subTitleTextStyle.copyWith(color: greenColor)
                          : subTitleTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          // Spacer(),
          Text(
            time,
            style:
                unread
                    ? subTitleTextStyle.copyWith(color: greenColor)
                    : subTitleTextStyle,
          ),
        ],
      ),
    );
  }
}
