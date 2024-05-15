import 'package:ecommerce_task/constants/button_widgte.dart';
import 'package:ecommerce_task/constants/color_constants.dart';
import 'package:ecommerce_task/constants/common_widgets.dart';
import 'package:ecommerce_task/constants/text_widget.dart';
import 'package:ecommerce_task/views/authentication/sigin.dart';
import 'package:ecommerce_task/views/authentication/signup.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: const Alignment(0, -0.9),
                end: const Alignment(0, 0.9),
                colors: ColorConstants.containerColor)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonWidgets.sizedbox(ht: 70),
              const TextWidget(
                text: "Laventa",
                color: Colors.black87,
                fontsize: 40,
                style: FontStyle.italic,
                fw: FontWeight.w900,
              ),
              CommonWidgets.imageWidget(),
              CommonWidgets.sizedbox(ht: 50),
              CommonWidgets.padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                widget: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        const TextWidget(
                          text: "Where",
                          fontsize: 32,
                          fw: FontWeight.w700,
                        ),
                        CommonWidgets.sizedbox(wd: 10),
                        const TextWidget(
                          text: "fashion",
                          fontsize: 32,
                          fw: FontWeight.w900,
                          color: Color.fromARGB(255, 226, 111, 149),
                        )
                      ],
                    )),
              ),
              CommonWidgets.padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                widget: const Align(
                  alignment: Alignment.topLeft,
                  child: TextWidget(
                    text: "comes to life",
                    fontsize: 32,
                    fw: FontWeight.w700,
                  ),
                ),
              ),
              CommonWidgets.sizedbox(ht: 60),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonWidget(
                        tap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (_) => const SignIn()));
                        },
                        text: "Sign In"),
                    CommonWidgets.sizedbox(wd: 50),
                    ButtonWidget(
                        tap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (_) => const SignUp()));
                        },
                        text: "Sign Up")
                  ],
                ),
              ),
              CommonWidgets.sizedbox(ht: 40),
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                TextWidget(
                  text: "Continue as ",
                  fontsize: 22,
                  fw: FontWeight.w500,
                ),
                TextWidget(
                  text: "Guest",
                  fontsize: 24,
                  fw: FontWeight.w800,
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
