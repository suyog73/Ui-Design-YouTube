import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_yt/helpers/constants.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.width,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: InkWell(
        splashColor: colorWhite.withAlpha(515),
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: colorDarkBlue,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: colorWhite),
              const SizedBox(width: 10),
              Text(text, style: const TextStyle(color: colorWhite)),
            ],
          ),
        ),
      ),
    );
  }
}
