import 'package:app_maybank/slicing/shoes/theme_shoes.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        top: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/shoes/shoes5.png",
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Football",
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 6),
                Text(
                  "Predator 20.3 FirmGround mmmmm",
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(height: 6),
                Text(
                  "\$68,47",
                  style: priceTextStyle.copyWith(fontWeight: medium),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
