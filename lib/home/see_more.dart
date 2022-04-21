import 'package:flutter/material.dart';


Widget seeMore(BuildContext context, Color dark, Color light){
  final size = MediaQuery.of(context).size;
  return Stack(
    children: [
      Container(
          width: size.width * 0.20,
          height: size.height * 0.13,
          decoration:  BoxDecoration(
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
          child: Column(children: [])
      ),
      Container(
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
            const Text(
              "See More",
              style: TextStyle(
                color: Colors.white70,
                fontFamily: 'Gilroy',
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, size.height * 0.015, 0, 0),
              child: Image.asset(
                "assets/dots.png",
                height : size.height * 0.02,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
