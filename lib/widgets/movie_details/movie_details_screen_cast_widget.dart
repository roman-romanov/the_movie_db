import 'package:flutter/material.dart';
import 'package:the_movie_db/const/const.dart';
import 'package:the_movie_db/styles/styles.dart';

class MovieDetailsScreenCastWidget extends StatelessWidget {
  const MovieDetailsScreenCastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _castPersons = [
      _CastPerson(
          image:
              'https://www.themoviedb.org/t/p/w375_and_h375_face/cgoy7t5Ve075naBPcewZrc08qGw.jpg',
          name: dwayneJohnson,
          castName: frankWolff),
      _CastPerson(
          image:
              'https://www.themoviedb.org/t/p/w375_and_h375_face/jqlqq3knztTnty5rcMg5evqZRCa.jpg',
          name: emilyBlunt,
          castName: drLilyHoughton),
      _CastPerson(
          image:
              'https://www.themoviedb.org/t/p/w375_and_h375_face/7VZnIAI7Yye0rfs7fPM5wI2CI6N.jpg',
          name: edgarRamirez,
          castName: lopeDeAguirre),
      _CastPerson(
          image:
              'https://www.themoviedb.org/t/p/w375_and_h375_face/8xRKz1tiVyjLxIMuD0ckOmF3xMY.jpg',
          name: jackWhitehall,
          castName: mcgregorHoughton),
      _CastPerson(
          image:
              'https://www.themoviedb.org/t/p/w375_and_h375_face/ckTthGclQE0y6b7gR0RpRo7LskL.jpg',
          name: jessePlemons,
          castName: princeJoachim),
      _CastPerson(
          image:
              'https://www.themoviedb.org/t/p/w375_and_h375_face/wbrVVJRr5TwhDZuvijBgOorzcAb.jpg',
          name: paulGiamatti,
          castName: nilo),
      _CastPerson(
          image:
              'https://www.themoviedb.org/t/p/w375_and_h375_face/8pC332VwrQi1hzsVKV5Jr8r7mLB.jpg',
          name: daniRovira,
          castName: sancho),
      _CastPerson(
          image:
              'https://www.themoviedb.org/t/p/w375_and_h375_face/4Ef1q1uHbbsrZQcfSWzIKfxbxB5.jpg',
          name: sulemCalderon,
          castName: quila),
      _CastPerson(
          image:
              'https://www.themoviedb.org/t/p/w375_and_h375_face/8zRSwWfrDnHleSRDtIeHYuAVmFK.jpg',
          name: veronicaFalcon,
          castName: traderSam),
    ];
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(starring, style: nameTwentyFour),
            SizedBox(height: 10),
            Container(
              height: 210,
              child: Scrollbar(
                thickness: 5.0,
                radius: Radius.circular(50),
                child: ListView.builder(
                    physics: BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    itemExtent: 120.0,
                    itemCount: _castPersons.length,
                    itemBuilder: (context, index) {
                      return _castPersons[index];
                    }),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(fullCastPersons, style: nameTwentyFour)),
          ],
        ),
      ),
    );
  }
}

class _CastPerson extends StatelessWidget {
  final String image;
  final String name;
  final String castName;
  const _CastPerson(
      {Key? key,
      required this.image,
      required this.name,
      required this.castName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Expanded(
            child: Card(
              clipBehavior: Clip.hardEdge,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: NetworkImage(image)),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name, style: nameEighteen, maxLines: 2),
                        Text(castName, maxLines: 3),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
