import 'package:app_maybank/slicing/shoes/theme_shoes.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 278,
      width: 215,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryTextColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: defaultMargin),
          Image.asset(
            "assets/shoes/shoes1.png",
            fit: BoxFit.cover,
            width: 215,
            height: 120,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hiking",
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 6),
                Text(
                  "TERREX URBAN LOW `1123",
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semibold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6),
                Text(
                  "\$143,98",
                  style: priceTextStyle.copyWith(fontWeight: semibold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
