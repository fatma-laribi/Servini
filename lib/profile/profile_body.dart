import 'package:flutter/material.dart';
import 'package:servini_app/colors.dart';
import 'package:servini_app/profile/person_card.dart';
import 'package:servini_app/home/title_row.dart';
import 'package:servini_app/profile/offer.dart';

class ProfileBody extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 20),
              Text(
                "About",
                style: TextStyle(
                  color: writingBlue,
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Text("I’m a professional scientist who loves helping others.",
                  style: TextStyle(fontSize: 16, fontFamily: "Gilroy")),
            ],
          ),
          const SizedBox(height: 20),
          titleRow("Offers"),
          Offer(
            title: 'Part-time 4th year High School Science tutor',
          ),
          const SizedBox(height: 20),
          titleRow("Recommendations"),
          const SizedBox(height: 20),
          PersonCard(
              name: "Foulen",
              lastName: "Fouleni",
              description:
                  "Firas is a very professional science tutor. Highly recommend!",
              nbStars: 4,
              pic: "assets/user.png"),
          const SizedBox(height: 20),
          PersonCard(
              name: "Foulen",
              lastName: "Fouleni",
              description:
                  "Firas is a very professional science tutor. Highly recommend!",
              nbStars: 4,
              pic: "assets/user.png")
        ],
      ),
    );
  }
}
