import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:servini_app/colors.dart';

Widget smallCategory(BuildContext context, String category, String icon,
    Color dark, Color light) {
  final size = MediaQuery.of(context).size;
  return Stack(
    children: [
      Container(
          width: size.width * 0.20,
          height: size.height * 0.13,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(24)),
            boxShadow: [
              BoxShadow(
                color: dark.withOpacity(0.35),
                spreadRadius: 0,
                blurRadius: 20,
                offset: const Offset(10, 10), // changes position of shadow
              ),
            ],
          ),
          child: Column(children: [])),
      Container(
        // margin: const EdgeInsets.all(10),
        // replace with expanded and flex with constant space
        width: size.width * 0.27,
        height: size.height * 0.13,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              dark,
              light,
            ],
          ),
          borderRadius: const BorderRadius.all(Radius.circular(24)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                icon,
                height: size.height * 0.06,
              ),
            ),
            SizedBox(height: size.height * 0.015),
            Text(
              category,
              style: const TextStyle(
                color: Colors.white70,
                fontFamily: 'Gilroy',
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
