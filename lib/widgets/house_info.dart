import 'package:flutter/material.dart';
import 'package:ui_yt/helpers/sample_data.dart';
import 'package:ui_yt/widgets/border_box.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({Key? key, required this.query, required this.queryText})
      : super(key: key);
  final String query;
  final String queryText;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final dynamic itemData = sampleData[0];

    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          BorderBox(
            child: Text(
              itemData[query].toString(),
              style: themeData.textTheme.headline3,
            ),
            height: 85,
            width: 85,
          ),
          const SizedBox(height: 15),
          Text(
            queryText,
            style: themeData.textTheme.headline5,
          )
        ],
      ),
    );
  }
}
