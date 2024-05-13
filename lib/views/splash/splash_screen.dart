import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecommerce_task/views/home/home_page.dart';
import 'package:ecommerce_task/views/welcome/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedSplashScreen(
      splashIconSize: 500,
      duration: 3000,
      splash: Center(
        child: Image.asset("assets/images/splash.gif"),
      ),
      nextScreen: checkLog(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    ));
  }
}

Widget checkLog() {
  return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User?> user) {
        if (user.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (user.hasData) {
          return const HomePage();
        } else {
          return const WelcomePage();
        }
      });
}
