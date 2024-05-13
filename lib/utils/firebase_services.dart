import 'package:ecommerce_task/views/authentication/sigin.dart';
import 'package:ecommerce_task/views/home/home_page.dart';
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
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => const SignIn()));
      } on FirebaseAuthException catch (e) {
        if (e.code == "email-already-in-use") {
          const snackbar = SnackBar(
              content: Center(
            child: Text("Email already in use"),
          ));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        } else if (e.code == "weak-password") {
          const snackbar = SnackBar(
              content: Center(
            child: Text("Email already in use"),
          ));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        } else {
          print("Error....");
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
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const HomePage()));
      } on FirebaseAuthException catch (e) {
        if (e.code == "wrong-password") {
          const snackbar = SnackBar(
              content: Center(
            child: Text("Wrong Password"),
          ));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        } else if (e.code == "user-not-found") {
          const snackbar = SnackBar(
              content: Center(
            child: Text("User not registered"),
          ));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        } else {
          print("Error....");
        }
      }
    }
  }
}
