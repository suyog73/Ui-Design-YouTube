import 'package:flutter/material.dart';
import 'package:ui_yt/helpers/constants.dart';

class BorderBox extends StatelessWidget {
  const BorderBox({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.all(8),
    this.height = 0,
    this.width = 0,
  }) : super(key: key);

  final Widget child;
  final EdgeInsets padding;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: colorGrey.withAlpha(40), width: 2),
      ),
      padding: padding,
      child: Center(child: child),
    );
  }
}
