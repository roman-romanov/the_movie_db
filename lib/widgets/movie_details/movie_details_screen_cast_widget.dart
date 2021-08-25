import 'package:flutter/material.dart';
import 'package:the_movie_db/const/const.dart';
import 'package:the_movie_db/images/app_images.dart';
import 'package:the_movie_db/styles/styles.dart';

class MovieDetailsScreenCastWidget extends StatelessWidget {
  const MovieDetailsScreenCastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _castPersons = [
      _CastPerson(
          image: AssetImage(AppImages.dwayne_johnson.assetName).assetName,
          name: dwayneJohnson,
          castName: frankWolff),
      _CastPerson(
          image: AssetImage(AppImages.emily_blunt.assetName).assetName,
          name: emilyBlunt,
          castName: drLilyHoughton),
      _CastPerson(
          image: AssetImage(AppImages.edgar_ramirez.assetName).assetName,
          name: edgarRamirez,
          castName: lopeDeAguirre),
      _CastPerson(
          image: AssetImage(AppImages.jack_whitehall.assetName).assetName,
          name: jackWhitehall,
          castName: mcgregorHoughton),
      _CastPerson(
          image: AssetImage(AppImages.jesse_plemons.assetName).assetName,
          name: jessePlemons,
          castName: princeJoachim),
      _CastPerson(
          image: AssetImage(AppImages.paul_giamatti.assetName).assetName,
          name: paulGiamatti,
          castName: nilo),
      _CastPerson(
          image: AssetImage(AppImages.dani_rovira.assetName).assetName,
          name: daniRovira,
          castName: sancho),
      _CastPerson(
          image: AssetImage(AppImages.sulemCalderon.assetName).assetName,
          name: sulemCalderon,
          castName: quila),
      _CastPerson(
          image: AssetImage(AppImages.veronicaFalcon.assetName).assetName,
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
            Text(
              'В главных ролях',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
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
                child: Text(
                  'Полный актерский и съемочный состав',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                )),
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
                  Image(image: AssetImage(image)),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: nameEighteen,
                          maxLines: 2,
                        ),
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
