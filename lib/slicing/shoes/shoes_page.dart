import 'package:app_maybank/slicing/shoes/theme_shoes.dart';
import 'package:app_maybank/slicing/widgets/product_card.dart';
import 'package:app_maybank/slicing/widgets/product_tile.dart';
import 'package:flutter/material.dart';

class ShoesPage extends StatelessWidget {
  const ShoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // header
    Widget header() {
      return Container(
        margin: EdgeInsets.fromLTRB(
          defaultMargin,
          defaultMargin,
          defaultMargin,
          0,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Halo, Ihsan Miftahul huda",
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semibold,
                    ),
                    maxLines: 1,
                  ),
                  Text(
                    "@isaz_mh",
                    style: subttileTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/shoes/icon_profile.png"),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // categories
    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: defaultMargin),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text(
                  "All Shoes",
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(color: secondaryColor),
                ),
                child: Text(
                  "Running",
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(color: secondaryColor),
                ),
                child: Text(
                  "Training",
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(color: secondaryColor),
                ),
                child: Text(
                  "Basketball",
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transparentColor,
                  border: Border.all(color: secondaryColor),
                ),
                child: Text(
                  "Hiking",
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // Popular Products
    Widget popularProductsTitle() {
      return Container(
        margin: EdgeInsets.fromLTRB(
          defaultMargin,
          defaultMargin,
          defaultMargin,
          0,
        ),
        child: Text(
          "Popular Products",
          style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semibold),
        ),
      );
    }

    // product card/tile
    Widget popularProducts() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: defaultMargin),
              for (var i = 0; i < 5; i++) ProductCard(),
            ],
          ),
        ),
      );
    }

    Widget newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.fromLTRB(
          defaultMargin,
          defaultMargin,
          defaultMargin,
          0,
        ),
        child: Text(
          "New Arrivals",
          style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semibold),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: Column(children: [for (var i = 0; i < 5; i++) ProductTile()]),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          header(),
          categories(),
          popularProductsTitle(),
          popularProducts(),
          newArrivalsTitle(),
          newArrivals(),
        ],
      ),
    );
  }
}
