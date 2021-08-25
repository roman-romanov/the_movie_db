import 'package:flutter/material.dart';
import 'package:the_movie_db/const/const.dart';
import 'package:the_movie_db/images/app_images.dart';
import 'package:the_movie_db/styles/styles.dart';

class MovieDetailsScreenCastWidget extends StatelessWidget {
  const MovieDetailsScreenCastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            SizedBox(
              height: 200,
              child: Scrollbar(
                thickness: 5.0,
                radius: Radius.circular(50),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemExtent: 120.0,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return _CastPerson();
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
  const _CastPerson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          clipBehavior: Clip.hardEdge,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage(AppImages.dwayne_johnson.assetName)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(dwayneJohnson, style: nameEighteen, maxLines: 2),
                    Text(frankWolff),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
