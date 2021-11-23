// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_yt/helpers/constants.dart';
import 'package:ui_yt/helpers/custom_function.dart';
import 'package:ui_yt/helpers/sample_data.dart';
import 'package:ui_yt/widgets/border_box.dart';
import 'package:ui_yt/widgets/house_info.dart';
import 'package:ui_yt/widgets/option_button.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final dynamic itemData = sampleData[0];

    return SafeArea(
      child: Scaffold(
        backgroundColor: colorWhite,
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(sampleData[0]['image'].toString()),
                    const Positioned(
                      top: 15,
                      left: 15,
                      child: BorderBox(
                        child: Icon(
                          Icons.arrow_back_outlined,
                        ),
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const Positioned(
                      right: 15,
                      top: 15,
                      child: BorderBox(
                        child: Icon(
                          Icons.favorite_border,
                        ),
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: kSidePadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                formatCurrency(itemData['amount']),
                                style: themeData.textTheme.headline1,
                              ),
                              Text(
                                itemData['address'],
                                style: themeData.textTheme.bodyText2,
                              ),
                            ],
                          ),
                          BorderBox(
                            height: 50,
                            width: size.width * 0.3,
                            child: Text(
                              '20 Hours ago',
                              style: themeData.textTheme.headline5,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'House Information',
                        style: themeData.textTheme.headline3,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ['area', 'Square Foot'],
                      ['bedrooms', 'Bedrooms'],
                      ['bathrooms', 'Bathrooms'],
                      ['garage', 'Garage'],
                    ]
                        .map((filter) =>
                            HouseInfo(query: filter[0], queryText: filter[1]))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Padding(
                    padding: kSidePadding,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          Text(itemData['description']),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              width: size.width,
              bottom: 20,
              right: 80,
              child: Center(
                child: OptionButton(
                  text: 'Message',
                  icon: Icons.message,
                  width: size.width * 0.35,
                ),
              ),
            ),
            Positioned(
              width: size.width,
              bottom: 20,
              left: 80,
              child: Center(
                child: OptionButton(
                  text: 'Call',
                  icon: Icons.phone,
                  width: size.width * 0.35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
