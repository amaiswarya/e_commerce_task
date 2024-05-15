import 'package:ecommerce_task/constants/button_widgte.dart';
import 'package:ecommerce_task/constants/common_widgets.dart';
import 'package:ecommerce_task/constants/image_container.dart';
import 'package:ecommerce_task/constants/text_widget.dart';
import 'package:ecommerce_task/views/welcome/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../constants/iconcontainer_widget.dart';
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
              CommonWidgets.sizedbox(ht: 50),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 45,
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
                  CommonWidgets.sizedbox(wd: 10),
                  const IconContainer(
                    icon: Icons.notifications_active,
                  ),
                  CommonWidgets.sizedbox(wd: 10),
                  const IconContainer(
                    icon: Icons.shopping_bag,
                  ),
                  CommonWidgets.sizedbox(wd: 10),
                  ButtonWidget(
                    wd: 60,
                    ht: 40,
                    radius: BorderRadius.circular(12),
                    fs: 13,
                    tap: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => const WelcomePage()));
                    },
                    text: "Sign Out",
                  )
                ],
              ),
              CommonWidgets.sizedbox(ht: 20),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                height: 280,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/shoes.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              CommonWidgets.sizedbox(ht: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ImageContainer(
                      imgUrl:
                          "https://cdn.iconscout.com/icon/free/png-256/free-nike-15-761696.png?f=webp"),
                  ImageContainer(
                      imgUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbsSMpjHmHBnGZwCCFanBQnIdiJJDeMDTThw&s"),
                  ImageContainer(
                      imgUrl:
                          "https://cdn.icon-icons.com/icons2/3914/PNG/512/puma_logo_icon_248754.png"),
                  ImageContainer(
                      imgUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAp9oKvsThFkkqtO433NfWWq09YEKEDGg_Ag&s"),
                  ImageContainer(
                      imgUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdp8tAaYWW9iAFmF62Dw1uFz_T6RKS9go0VQ&s"),
                ],
              ),
              CommonWidgets.sizedbox(ht: 5),
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
              CommonWidgets.sizedbox(ht: 20),
              Row(
                children: [
                  const TextWidget(
                    text: "Today Sale!",
                    fontsize: 24,
                    fw: FontWeight.w800,
                  ),
                  CommonWidgets.sizedbox(wd: 8),
                  Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 247, 225, 232)),
                      child: const TextWidget(
                        text: "04:43:23",
                        fontsize: 22,
                        fw: FontWeight.w900,
                        color: Color.fromARGB(255, 232, 136, 168),
                      )),
                  CommonWidgets.sizedbox(wd: 50),
                  const TextWidget(
                    text: "See More",
                    fontsize: 18,
                    fw: FontWeight.w700,
                  )
                ],
              ),
              CommonWidgets.sizedbox(ht: 20),
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
