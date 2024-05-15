import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final void Function() tap;
  final String text;
  final double? wd;
  final double? ht;
  final double? fs;
  final BorderRadius? radius;
  const ButtonWidget({
    super.key,
    required this.tap,
    required this.text,
    this.wd,
    this.ht,
    this.fs,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        alignment: Alignment.center,
        width: wd ?? 120,
        height: ht ?? 50,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: radius ?? BorderRadius.circular(20)),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: fs ?? 18,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
