import 'package:ecommerce_task/views/welcome/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../data/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 50,
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 231, 229, 229)),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                          color: Color.fromARGB(255, 122, 121, 121),
                        ),
                        Text("Search",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 175, 174, 174)))
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 231, 229, 229)),
                      child: const Icon(
                        Icons.notifications_active,
                        color: Color.fromARGB(255, 172, 170, 170),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 231, 229, 229)),
                      child: const Icon(
                        Icons.shopping_bag,
                        color: Color.fromARGB(255, 172, 170, 170),
                      )),
                  const SizedBox(width: 10),
                  Container(
                    alignment: Alignment.center,
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                      onTap: () {
                        FirebaseAuth.instance.signOut();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => const WelcomePage()));
                      },
                      child: const Text(
                        "Sign Out",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                height: 250,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/shoes.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 231, 229, 229)),
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://cdn.iconscout.com/icon/free/png-256/free-nike-15-761696.png?f=webp")),
                  Container(
                      clipBehavior: Clip.hardEdge,
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 231, 229, 229)),
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbsSMpjHmHBnGZwCCFanBQnIdiJJDeMDTThw&s")),
                  Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 231, 229, 229)),
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://cdn.icon-icons.com/icons2/3914/PNG/512/puma_logo_icon_248754.png")),
                  Container(
                      clipBehavior: Clip.hardEdge,
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 231, 229, 229)),
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAp9oKvsThFkkqtO433NfWWq09YEKEDGg_Ag&s")),
                  Container(
                      clipBehavior: Clip.hardEdge,
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 231, 229, 229)),
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdp8tAaYWW9iAFmF62Dw1uFz_T6RKS9go0VQ&s")),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Nike"),
                  Text("Adidas"),
                  Text("Puma"),
                  Text("NB"),
                  Text("Converse"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    "Today Sale!",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 247, 225, 232)),
                      child: const Text(
                        "04:43:23",
                        style: TextStyle(
                            color: Color.fromARGB(255, 232, 136, 168),
                            fontSize: 22,
                            fontWeight: FontWeight.w900),
                      )),
                  const SizedBox(
                    width: 50,
                  ),
                  const Text("See More",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: DataList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(5),
                      height: 350,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12)),
                              height: 200,
                              width: double.infinity,
                              child: Image.network(
                                DataList[index]["imageUrl"]!,
                                fit: BoxFit.cover,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            DataList[index]["name"]!,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 72, 71, 71)),
                          ),
                          Text(
                            DataList[index]["description"]!,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 72, 71, 71)),
                          ),
                          Text(
                            DataList[index]["colour"]!,
                            style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 72, 71, 71)),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
