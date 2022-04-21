import 'package:flutter/cupertino.dart';
import '../colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget heartButton(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return Container(
    height: 74,
    width: 84,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      boxShadow: [
        BoxShadow(
          color: bubbleWhite,
        ),
        BoxShadow(
          color: purple,
          spreadRadius: -5,
          blurRadius: 25,
        ),
      ],
    ),
    child: SvgPicture.asset(
      "assets/empty_heart.svg",
      fit: BoxFit.scaleDown,
    ),
  );
}
