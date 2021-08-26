import 'package:flutter/material.dart';
import 'package:the_movie_db/const/const.dart';
import 'package:the_movie_db/styles/styles.dart';

class SocialNetworkWidget extends StatelessWidget {
  const SocialNetworkWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 0.5, width: widthInfifnity, color: Colors.black),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                socialNetwork,
                style: nameTwentyFour,
              ),
              Column(
                children: [
                  Text(reviews, style: nameSeventeenBlack),
                  Text(discussions, style: nameSeventeenBlack),
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
                    padding: const EdgeInsets.all(15.0),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Table(children: [
                      TableRow(children: [
                        Text(comment),
                        Text('1', textAlign: TextAlign.center),
                        Text('07 авг 2021 в 05:11\nПользователь',
                            textAlign: TextAlign.end),
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
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(width: 10),
                        Text(avatarName, style: nameSeventeenBlack),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Table(children: [
                      TableRow(children: [
                        Text(comment),
                        Text('0', textAlign: textAlignCenter),
                        Text('02 сен 2019 в 04:53\nПользователь',
                            textAlign: TextAlign.end)
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
