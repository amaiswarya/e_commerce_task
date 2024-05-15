import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final IconData icon;
  const IconContainer({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(255, 231, 229, 229)),
        child: Icon(
          icon,
          color: const Color.fromARGB(255, 172, 170, 170),
        ));
  }
}
