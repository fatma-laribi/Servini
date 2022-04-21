import 'package:flutter/material.dart';
import '../Home/search_page.dart';
import '../colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget topPart(BuildContext context, double numberStars) {
  final size = MediaQuery.of(context).size;
  final stars = <Widget>[];
  for (var i = 0; i < 5; i++) {
    if (numberStars >= 1) {
      stars.add(Image.asset("assets/full_star.png", height: 22));
      numberStars--;
    } else if (numberStars > 0) {
      stars.add(Image.asset("assets/half_star.png", height: 22));
      numberStars--;
    } else {
      stars.add(Image.asset("assets/empty_star.png", height: 22));
    }
  }

  return Container(
    height: 350, //size.height * 0.5
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        begin: AlignmentDirectional.topCenter,
        end: AlignmentDirectional.bottomCenter,
        colors: [
          specialBlue,
          specialPurple,
        ],
      ),
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(91),
        bottomRight: Radius.circular(91),
      ),
      boxShadow: [
        BoxShadow(
          color: specialPurple.withOpacity(0.4),
          spreadRadius: 0,
          blurRadius: 20,
          offset: const Offset(0, 10),
        ),
      ],
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                  size.width * 0.05, size.width * 0.05, 0, 0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchPage()),
                  );
                },
                child: SvgPicture.asset("assets/arrow.svg"),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all(size.height * 0.015),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Positioned(
                child: Image.asset(
                  "assets/level_3.png",
                  height: size.height * 0.18 + 8,
                ),
              ),
              ClipOval(
                child: Image.asset(
                  "assets/user.png",
                  width: size.height * 0.18,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        const Text(
          "Firas Ghanmi",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "GilroySemiBold",
            fontSize: 25,
          ),
        ),
        const Text(
          "Science Professor & part-time tutor",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "GilroyRegular",
            fontSize: 13,
          ),
        ),
        SizedBox(height: size.height * 0.020),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/location.png",
                  height: 19,
                ),
                const Text(
                  "Tunis, Tunisia",
                  style: TextStyle(
                    fontFamily: "GilroyRegular",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: stars,
            ),
          ],
        ),
        SizedBox(height: size.height * 0.005),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/gym_badge.png"),
            SizedBox(width: size.width * 0.03),
            Image.asset("assets/teaching_badge.png"),
          ],
        ),
      ],
    ),
  );
}
