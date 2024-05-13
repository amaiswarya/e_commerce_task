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
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0, -0.9),
                end: Alignment(0, 0.9),
                colors: [
              Color.fromARGB(255, 142, 140, 140),
              Color.fromARGB(255, 208, 207, 207),
              Color.fromARGB(255, 230, 229, 229),
              Color.fromARGB(255, 234, 233, 233),
              Color.fromARGB(255, 237, 237, 237),
              Color.fromARGB(255, 241, 240, 240),
              Color.fromARGB(255, 250, 249, 249),
              Colors.white,
              Colors.white,
              Colors.white
            ])),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Laventa",
              style: TextStyle(
                  fontSize: 26,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                Container(
                  height: 320,
                  width: 300,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(224, 171, 129, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(90),
                        topRight: Radius.circular(90)),
                  ),
                ),
                Positioned(
                  top: 30,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(90),
                          topRight: Radius.circular(90)),
                    ),
                    child: SizedBox(
                      width: 320,
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://brrdee.com/cdn/shop/articles/Julia-U-guest-post-scaled-1200x1200-cropped.jpg?v=1696412975&width=940"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 50,
              ),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Text(
                        "Where ",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        " fashion",
                        style: TextStyle(
                            color: Color.fromRGBO(224, 171, 129, 1),
                            fontSize: 28,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  )),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 50,
              ),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "comes to life.",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                  )),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => const SignIn()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => const SignUp()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Continue as ",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Text("Guest",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800))
            ])
          ],
        ),
      ),
    );
  }
}
