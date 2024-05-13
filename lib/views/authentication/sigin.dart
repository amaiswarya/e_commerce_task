import 'package:ecommerce_task/utils/firebase_services.dart';
import 'package:ecommerce_task/views/authentication/signup.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        backgroundColor: const Color.fromRGBO(65, 65, 65, 1),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Sign In",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
              ),
              Stack(
                children: [
                  Container(
                    height: 230,
                    width: 230,
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "email required";
                    }
                    return null;
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(20),
                      hintText: "Email",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          )),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 224, 223, 223),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(18))),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "password required";
                    }
                    return null;
                  },
                  controller: passwordController,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(20),
                      hintText: "Password",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          )),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 224, 223, 223),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(18))),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text("Forgot Password?"),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                width: 120,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: GestureDetector(
                  onTap: () async {
                    await firebaseAuthentication.siginUser(
                        email: emailController.text,
                        password: passwordController.text,
                        context: context);
                    emailController.clear();
                    passwordController.clear();
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  "Don't have an Account?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const SignUp()));
                  },
                  child: const Text("Sign Up",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
