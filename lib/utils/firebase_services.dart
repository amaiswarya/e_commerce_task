// ignore_for_file: use_build_context_synchronously

import 'package:ecommerce_task/constants/common_widgets.dart';
import 'package:ecommerce_task/views/authentication/sigin.dart';
import 'package:ecommerce_task/views/home/home_page.dart';
import 'package:ecommerce_task/views/welcome/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuthentication {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<void> createUser({
    required String email,
    required String name,
    required String password,
    required BuildContext context,
  }) async {
    email.trim();
    name.trim();
    password.trim();
    if (email != "" && password != "" && name != "") {
      try {
        await firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password);
        final snackbar = CommonWidgets.snackbar("User registered successfully");
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => const SignIn()));
      } on FirebaseAuthException catch (e) {
        if (e.code == "email-already-in-use") {
          final snackbar = CommonWidgets.snackbar("Email already registered");
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        } else if (e.code == "weak-password") {
          final snackbar =
              CommonWidgets.snackbar("Password provided is too weak");
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        } else {
          final snackbar = CommonWidgets.snackbar(e.toString());
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        }
      }
    }
  }

  Future<void> siginUser(
      {required String email,
      required String password,
      required BuildContext context}) async {
    email.trim();
    password.trim();

    if (email != "" && password != "") {
      try {
        await firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password);
        final snackbar = CommonWidgets.snackbar("Logged in successfully");
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const HomePage()));
      } on FirebaseAuthException catch (e) {
        if (e.code == "wrong-password") {
          final snackbar = CommonWidgets.snackbar("Wrong Password");
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        } else if (e.code == "user-not-found") {
          final snackbar = CommonWidgets.snackbar("User not registered");
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        } else {
          final snackbar = CommonWidgets.snackbar(e.toString());
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        }
      }
    }
  }

// checking user log
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
}
