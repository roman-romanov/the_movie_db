import 'package:flutter/material.dart';
import 'package:the_movie_db/styles/const.dart';
import 'package:the_movie_db/styles/styles.dart';

class SocialNetworkWidget extends StatelessWidget {
  const SocialNetworkWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 0.5, width: widthInfifnity, color: black),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                socialNetwork,
                style: nameTwentyFour,
                maxLines: 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(reviews, style: nameSeventeenBlack),
                      SizedBox(width: 8),
                      Text('0',style: nameSixteenBlackBold,),
                    ],
                  ),
                  Row(
                    children: [
                      Text(discussions, style: nameSeventeenBlack),
                      SizedBox(width: 8),
                      Text('12',style: nameSixteenBlackBold,),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            child: Container(
              height: 120,
              width: widthInfifnity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://www.themoviedb.org/t/p/w300_and_h300_face/uEAkyTcAazQR8JFyPjqQ1425iZp.jpg'),
                        ),
                        SizedBox(width: 10),
                        Text(avatarName, style: nameSeventeenBlack),
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(right: 20),
                      alignment: Alignment.centerRight,
                      child:
                          Text('07.08.2021 в 05:11', textAlign: TextAlign.end)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Table(columnWidths: {
                      0: FractionColumnWidth(0.4),
                      1: FractionColumnWidth(0.2),
                      2: FractionColumnWidth(0.4)
                    }, children: [
                      TableRow(children: [
                        Text(comment),
                        Text('1', textAlign: TextAlign.center),
                        Text(
                          userName,
                          textAlign: TextAlign.end,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ]),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            child: Container(
              height: 120,
              width: widthInfifnity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(width: 10),
                        Text(avatarName, style: nameSeventeenBlack),
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(right: 20),
                      alignment: Alignment.centerRight,
                      child:
                          Text('02.09.2019 в 04:53', textAlign: TextAlign.end)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Table(columnWidths: {
                      0: FractionColumnWidth(.4),
                      1: FractionColumnWidth(.2),
                      2: FractionColumnWidth(.4)
                    }, children: [
                      TableRow(children: [
                        Text(comment),
                        Text('0', textAlign: textAlignCenter),
                        Text(
                          userName,
                          textAlign: TextAlign.end,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ]),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {},
            child: Text(toDiscussions, style: nameTwentyFour),
          ),
        ),
        SizedBox(height: 20),
        Container(height: 0.5, width: widthInfifnity, color: Colors.black),
      ],
    );
  }
}
