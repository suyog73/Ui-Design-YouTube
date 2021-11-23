import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_yt/helpers/constants.dart';
import 'package:ui_yt/helpers/sample_data.dart';
import 'package:ui_yt/widgets/border_box.dart';
import 'package:ui_yt/widgets/choice_option.dart';
import 'package:ui_yt/widgets/option_button.dart';
import 'package:ui_yt/widgets/real_estate_item.dart';

import 'detail_screen.dart';

class HomeListScreen extends StatelessWidget {
  const HomeListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: kPadding),
                  Padding(
                    padding: kSidePadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        BorderBox(
                          child: Icon(Icons.menu, color: colorBlack),
                          width: 50,
                          height: 50,
                        ),
                        BorderBox(
                          child: Icon(Icons.settings, color: colorBlack),
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: kPadding),
                  Padding(
                    padding: kSidePadding,
                    child: Text('City', style: themeData.textTheme.bodyText2),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: kSidePadding,
                    child: Text('Aurangabad',
                        style: themeData.textTheme.headline1),
                  ),
                  const Padding(
                    padding: kSidePadding,
                    child: Divider(
                      height: kPadding,
                      color: colorGrey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        '<\$220,000',
                        'For sale',
                        '3-4 Beds',
                        '>1000 sqft'
                      ].map((filter) => ChoiceOption(text: filter)).toList(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: Padding(
                      padding: kSidePadding,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: sampleData.length,
                        itemBuilder: (context, index) {
                          return RealEstateItem(itemData: sampleData[index]);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                width: size.width,
                child: Center(
                  child: OptionButton(
                    text: 'Map View',
                    icon: Icons.map_rounded,
                    width: size.width * 0.35,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
