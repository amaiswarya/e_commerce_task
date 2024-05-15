import 'package:flutter/material.dart';

class CommonWidgets {
  static Widget sizedbox({double? ht, double? wd}) {
    return SizedBox(
      height: ht,
      width: wd,
    );
  }

  static Widget padding({EdgeInsetsGeometry? padding, Widget? widget}) {
    return Padding(
      padding: padding!,
      child: widget,
    );
  }

  static Widget imageWidget() {
    return SizedBox(
      height: 330,
      width: 350,
      child: Image.asset(fit: BoxFit.cover, "assets/images/welcome.png"),
    );
  }

  static Widget gestureText(
      BuildContext context, Function() ontap, Widget widget) {
    return GestureDetector(onTap: ontap, child: widget);
  }

  static SnackBar snackbar(String text) {
    return SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.teal,
        content: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ));
  }
}
