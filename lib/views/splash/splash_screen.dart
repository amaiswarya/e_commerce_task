import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecommerce_task/utils/firebase_services.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  FirebaseAuthentication firebaseAuthentication = FirebaseAuthentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedSplashScreen(
      splashIconSize: 500,
      duration: 3000,
      splash: Center(
        child: Image.asset("assets/images/splash.gif"),
      ),
      nextScreen: firebaseAuthentication.checkLog(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    ));
  }
}
