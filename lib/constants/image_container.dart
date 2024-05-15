import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String imgUrl;
  const ImageContainer({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Color.fromARGB(255, 231, 229, 229)),
        child: Image.network(
          imgUrl,
          fit: BoxFit.cover,
        ));
  }
}
