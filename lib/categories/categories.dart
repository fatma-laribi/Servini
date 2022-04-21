import 'package:flutter/material.dart';

import 'category.dart';
import 'choice.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25),
            child: const Text(
              "Categories",
              style: TextStyle(
                  color: Color(0xFF424E5E),
                  fontFamily: "Gilroy",
                  fontSize: 25,
                  fontWeight: FontWeight.w800),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Choice(text: "Favourite", ticked: false),
                  Choice(text: "Recent", ticked: false),
                  Choice(text: "Trending", ticked: false),
                  Choice(text: "All", ticked: true)
                ]),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
              child: Category(
                  name: "Painter",
                  description:
                      "Does your house need painting?", //Does your house need painting? aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                  image: "assets/ice_cream.png",
                  isRight: true)),
          const SizedBox(
            height: 40,
          ),
          Center(
              child: Category(
                  name: "Petsitter",
                  description:
                      "Are you worried about letting your pet alone for a while?",
                  image: "assets/corgi.png",
                  isRight: false)),
          const SizedBox(
            height: 40,
          ),
          Center(
              child: Category(
                  name: "Cameraman",
                  description:
                      "Do you have an important event that needs to be immortalized?",
                  image: "assets/camera.png",
                  isRight: true)),
          const SizedBox(
            height: 40,
          ),
          Center(
              child: Category(
                  name: "Caterer",
                  description:
                      "Do you need someone to take care of preparing your dinner?",
                  image: "assets/cake.png",
                  isRight: false)),
        ],
      ),
    );
  }
}
