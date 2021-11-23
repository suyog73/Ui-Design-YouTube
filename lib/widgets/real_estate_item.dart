import 'package:flutter/material.dart';
import 'package:ui_yt/helpers/constants.dart';
import 'package:ui_yt/helpers/custom_function.dart';
import 'border_box.dart';

class RealEstateItem extends StatelessWidget {
  const RealEstateItem({Key? key, @required this.itemData}) : super(key: key);

  final dynamic itemData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(itemData['image']),
              ),
              const Positioned(
                right: 15,
                top: 15,
                child: BorderBox(
                  width: 50,
                  height: 50,
                  child: Icon(
                    Icons.favorite_border,
                    color: colorBlack,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                formatCurrency(itemData['amount']),
                style: themeData.textTheme.headline1,
              ),
              const SizedBox(width: 10),
              Text(
                itemData['address'],
                style: themeData.textTheme.bodyText2,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                "${itemData['bedrooms']} bedrooms / ${itemData['bathrooms']} bathrooms / ${itemData['area']} sqft",
                style: themeData.textTheme.headline5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
