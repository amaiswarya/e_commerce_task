import 'package:ecommerce_task/constants/button_widgte.dart';
import 'package:ecommerce_task/constants/common_widgets.dart';
import 'package:ecommerce_task/constants/text_widget.dart';
import 'package:ecommerce_task/constants/textformfield.dart';
import 'package:ecommerce_task/utils/firebase_services.dart';
import 'package:ecommerce_task/views/authentication/sigin.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  FirebaseAuthentication firebaseAuthentication = FirebaseAuthentication();
  TextEditingController nameController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 242, 242),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CommonWidgets.sizedbox(ht: 30),
                const TextWidget(
                  text: "Sign Up",
                  fontsize: 26,
                  fw: FontWeight.w900,
                ),
                CommonWidgets.imageWidget(),
                TextFormFieldWidget(
                    type: TextInputType.name,
                    controller: nameController,
                    errorText: "*name required",
                    hintText: "Name"),
                CommonWidgets.sizedbox(ht: 7),
                TextFormFieldWidget(
                    type: TextInputType.emailAddress,
                    controller: emailController,
                    errorText: "*email required",
                    hintText: "Email"),
                CommonWidgets.sizedbox(ht: 7),
                TextFormFieldWidget(
                    type: TextInputType.visiblePassword,
                    controller: passwordController,
                    errorText: "*password required",
                    hintText: "Password"),
                CommonWidgets.sizedbox(ht: 7),
                TextFormFieldWidget(
                    type: TextInputType.visiblePassword,
                    controller: confirmPasswordController,
                    errorText: "*confirm your password",
                    hintText: "Confirm Password"),
                CommonWidgets.sizedbox(ht: 20),
                ButtonWidget(
                    tap: () async {
                      if (formKey.currentState!.validate()) {
                        await firebaseAuthentication.createUser(
                            email: emailController.text,
                            name: nameController.text,
                            password: passwordController.text,
                            context: context);
                      }
                      emailController.clear();
                      passwordController.clear();
                      nameController.clear();
                      confirmPasswordController.clear();
                    },
                    text: "Sign Up"),
                CommonWidgets.sizedbox(ht: 20),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const TextWidget(
                    text: "Already have an Account?",
                    fontsize: 18,
                    fw: FontWeight.w500,
                  ),
                  CommonWidgets.gestureText(
                      context,
                      () => () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (_) => const SignIn()));
                          },
                      const TextWidget(
                        text: "Sign In",
                        fontsize: 18,
                        fw: FontWeight.w800,
                      ))
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
