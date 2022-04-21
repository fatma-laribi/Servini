import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PersonCard extends StatelessWidget {
  var name;
  var lastName;
  var description;
  double nbStars;
  String pic;
  PersonCard({
    Key? key,
    required this.name,
    required this.lastName,
    required this.description,
    required this.nbStars,
    required this.pic,
  }) : super(key: key);
  List<Widget> _starWidget() {
    List<Widget> list = [];
    for (var i = 0; i < nbStars.floor(); i++) {
      list.add(Image.asset(
        'assets/star.png',
        width: 19,
        height: 19,
      ));
    }
    //mel length lel 5 fer8in, wel cas mta3 chtar
    double rest = nbStars - list.length;
    int r = (rest * 1000).toInt();
    print(rest);
    switch (r) {
      case 0:
        {
          for (var i = 0; i < 5 - nbStars; i++) {
            list.add(Image.asset(
              'assets/étoile-vide.png',
              width: 19,
              height: 19,
            ));
          }
        }
        break;
      default:
        {
          list.add(Image.asset(
            'assets/star-half-yellow.png',
            width: 19,
            height: 19,
          ));
          for (var i = 0; i < 4 - nbStars; i++) {
            list.add(Image.asset(
              'assets/étoile-vide.png',
              width: 19,
              height: 19,
            ));
          }
        }
        break;
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        width: 336,
        decoration: BoxDecoration(
          color: Color(0xFFF2F6FA),
          border: Border(
            bottom: BorderSide(width: 1.0, color: Color(0xFFC0C0C0)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(11.07, 7.07, 0, 26.37),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Image.asset(
                        pic.toString(),
                        width: 78.15,
                        height: 79.56,
                      )),
                ),
              ),
            ),
            const SizedBox(
              width: 23,
            ), //photo
            Expanded(
              flex: 4,
              child: Column(
                //b9ya
                children: [
                  Row(
                    //name + stars
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              name + " " + lastName,
                              style: const TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 16,
                                  color: Color(0xFF424E5E),
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),

                      //name
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: _starWidget(),
                        ),
                      ), //stars
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF424E5E),
                              fontFamily: "Gilroy"),
                        ),
                      )
                    ],
                  ) //desc
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
