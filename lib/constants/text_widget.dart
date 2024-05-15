import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontsize;
  final FontStyle? style;
  final FontWeight? fw;
  const TextWidget({
    super.key,
    required this.text,
    this.color,
    this.fontsize,
    this.style,
    this.fw,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: color,
          fontSize: fontsize,
          fontStyle: style,
          fontWeight: fw,
        ));
  }
}
