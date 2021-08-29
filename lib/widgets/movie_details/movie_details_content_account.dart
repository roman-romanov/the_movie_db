import 'dart:math';

import 'package:flutter/material.dart';
import 'package:the_movie_db/const/const.dart';
import 'package:the_movie_db/styles/styles.dart';

class ContentAccountWidget extends StatelessWidget {
  const ContentAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: widthInfifnity, color: black),
        Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(contentAccount, style: nameTwentyFour)),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              width: widthInfifnity,
              height: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), color: black),
              child: Text('100', style: nameEighteenWhiteSimple),
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(looksGreat, style: nameSixteenBlackSimple),
              SizedBox(height: 20.0),
              Text(theBestParticipants, style: nameTwentyFour),
              SizedBox(height: 10.0),
              Row(
                children: [
                  CircleAvatar(),
                  SizedBox(width: 15.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('71', style: nameEighteen),
                      Text('tyler', style: nameSeventeenBlack),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  CircleAvatar(),
                  SizedBox(width: 15.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('53', style: nameEighteen),
                      Text('Nuclear92', style: nameSeventeenBlack)
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  CircleAvatar(),
                  SizedBox(width: 15.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('42', style: nameEighteen),
                      Text('raze464', style: nameSeventeenBlack)
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  CircleAvatar(),
                  SizedBox(width: 15.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('39', style: nameEighteen),
                      Text('Classic Loki', style: nameSeventeenBlack)
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35.0),
                  TextButton(
                    onPressed: () {},
                    child: Text(viewEditHistory, style: nameTwentySimple),
                  ),
                  SizedBox(height: 20.0),
                  Text(popularityScale, style: nameTwentyFour),
                  SizedBox(height: 20),
                  Container(
                      width: widthInfifnity,
                      height: 40,
                      child: CustomPaint(painter: LinePaintWidget())),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.center,
                width: 270,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    color: black, borderRadius: BorderRadius.circular(50)),
                child: Row(
                  children: [
                    Icon(Icons.lock, color: Colors.white),
                    TextButton(
                        onPressed: () {},
                        child: Text(enterForInformation.toUpperCase(),
                            style: nameTwentyWhite)),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Row(children: [
                Icon(Icons.info),
                TextButton(
                    onPressed: () {},
                    child: Text(issueReport, style: nameTwentySimple))
              ]),
              SizedBox(height: 20.0),
            ],
          ),
        )
      ],
    );
  }
}

class LinePaintWidget extends CustomPainter {
  const LinePaintWidget({Key? key});

  @override
  void paint(Canvas canvas, Size size) {
    final line = Paint();
    line.color = black;
    line.style = PaintingStyle.stroke;
    line.strokeWidth = 4.0;
    //Верхняя линия
    canvas.drawLine(Offset(90, 0), Offset(pi, 0), line);
    //Линия с уклоном
    canvas.drawLine(Offset(89, 0), Offset(149, 39), line);
    //Нижняя линия
    canvas.drawLine(Offset(148, 39), Offset(240, 39), line);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
