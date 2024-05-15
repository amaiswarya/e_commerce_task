import 'package:ecommerce_task/constants/button_widgte.dart';
import 'package:ecommerce_task/utils/firebase_services.dart';
import 'package:ecommerce_task/views/authentication/signup.dart';
import 'package:flutter/material.dart';

import '../../constants/common_widgets.dart';
import '../../constants/text_widget.dart';
import '../../constants/textformfield.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  FirebaseAuthentication firebaseAuthentication = FirebaseAuthentication();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 242, 242),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CommonWidgets.sizedbox(ht: 40),
              const TextWidget(
                text: "Sign In",
                fontsize: 26,
                fw: FontWeight.w900,
              ),
              CommonWidgets.imageWidget(),
              CommonWidgets.sizedbox(ht: 5),
              TextFormFieldWidget(
                  type: TextInputType.emailAddress,
                  controller: emailController,
                  errorText: "*email required",
                  hintText: "Email"),
              CommonWidgets.sizedbox(ht: 12),
              TextFormFieldWidget(
                  type: TextInputType.visiblePassword,
                  controller: passwordController,
                  errorText: "*password required",
                  hintText: "Password"),
              CommonWidgets.padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                widget: const Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ButtonWidget(
                  tap: () async {
                    if (formKey.currentState!.validate()) {
                      await firebaseAuthentication.siginUser(
                          email: emailController.text,
                          password: passwordController.text,
                          context: context);
                    }

                    emailController.clear();
                    passwordController.clear();
                  },
                  text: "Sign In"),
              const SizedBox(
                height: 40,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const TextWidget(
                  text: "Don't have an Account?",
                  fontsize: 18,
                  fw: FontWeight.w500,
                ),
                CommonWidgets.gestureText(
                    context,
                    () => () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (_) => const SignUp()));
                        },
                    const TextWidget(
                      text: "Sign Up",
                      fontsize: 18,
                      fw: FontWeight.w800,
                    ))
              ])
            ],
          ),
        ),
      ),
    );
  }
}
