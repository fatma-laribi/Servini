import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String name, description, image;
  bool isRight;
  Category(
      {Key? key,
      required this.name,
      required this.description,
      required this.image,
      required this.isRight});
  @override
  Widget build(BuildContext context) {
    double positionX, positionY;
    if (isRight) {
      positionY = 5;
      positionX = -40;
    } else {
      positionY = 5;
      positionX = 40;//naarach les positions bedhabt
    }
    return Stack(overflow: Overflow.visible, fit: StackFit.loose, children: [
      Container(
        width: 310,
        height: 122,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Color(0xff2CCFE2), Color(0xff8CF3FF)]),
            borderRadius: BorderRadius.all(Radius.circular(14))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              name,
              style: const TextStyle(
                  color: Color(0xFF424E5E),
                  fontSize: 20,
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            width: 220,
            margin: const EdgeInsets.only(left: 26, top: 10),
            child: Flexible(
              child: Text(
                description,
                style: const TextStyle(
                    color: Color(0xFFF5F8FB),
                    fontSize: 13,
                    fontFamily: "Gilroy",
                    fontWeight: FontWeight.w800),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ),
        ]),
      ),
      Positioned(
        child: Image.asset(image),
        bottom: positionY,
        right: positionX,
      ),
    ]);
  }
}
