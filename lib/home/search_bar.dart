import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../colors.dart';

Widget searchBar(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return Row(
    children: [
      Expanded(
        flex: 3,
        child: Column(
          children: [
            Container(
              height: size.height * 0.06,
              decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        size.width * 0.05, 0, size.width * 0.025, 0),
                    child: Icon(
                      Icons.search,
                      color: writingBlue.withOpacity(0.7),
                    ),
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontFamily: "Gilroy",
                      fontWeight: FontWeight.w800,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Expanded(
        flex: 1,
        child: Column(
          children: [
            Container(
              height: size.height * 0.06,
              width: size.width * 0.14,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    darkOrange,
                    lightOrange,
                  ],
                ),
                borderRadius: const BorderRadius.all(Radius.circular(37)),
                boxShadow: [
                  BoxShadow(
                      color: darkOrange.withOpacity(0.35),
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: const Offset(0, 10) // changes position of shadow
                      ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(""),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
