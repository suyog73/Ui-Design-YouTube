import 'package:flutter/material.dart';
import 'package:ui_yt/helpers/constants.dart';

class ChoiceOption extends StatelessWidget {
  const ChoiceOption({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorGrey.withAlpha(25),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: const EdgeInsets.only(left: 25),
      child: Text(text, style: themeData.textTheme.headline5),
    );
  }
}
