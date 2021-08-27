import 'package:flutter/material.dart';
import 'package:the_movie_db/const/const.dart';
import 'package:the_movie_db/styles/styles.dart';

class MediaWidget extends StatelessWidget {
  const MediaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var images = [
      ImagesWidget(
          imageName:
              'https://www.themoviedb.org/t/p/w1000_and_h450_multi_faces/7WJjFviFBffEJvkAms4uWwbcVUk.jpg'),
      ImagesWidget(
          imageName:
              'https://www.themoviedb.org/t/p/w188_and_h282_bestv2/t6PpKQfjQmotvC9b2YeNTaTwMd.jpg'),
    ];
    return Column(
      children: [
        Container(width: widthInfifnity, height: half),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(media, style: nameTwentyFour, maxLines: 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(themostPopular, style: nameSeventeenBlack),
                      SizedBox(width: 8),
                      Text('0', style: nameSixteenBlackBold),
                    ],
                  ),
                  Row(
                    children: [
                      Text(backdrops, style: nameSeventeenBlack),
                      SizedBox(width: 8),
                      Text('13', style: nameSixteenBlackBold),
                    ],
                  ),
                  Row(
                    children: [
                      Text(videoClip, style: nameSeventeenBlack),
                      SizedBox(width: 8),
                      Text('2', style: nameSixteenBlackBold),
                    ],
                  ),
                  Row(
                    children: [
                      Text(posters, style: nameSeventeenBlack),
                      SizedBox(width: 8),
                      Text('87', style: nameSixteenBlackBold),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 150,
          width: widthInfifnity,
          child: Scrollbar(
            thickness: 5.0,
            radius: Radius.circular(50),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return images[index];
                }),
          ),
        ),
        Padding(padding: EdgeInsets.all(20)),
        Container(width: widthInfifnity, height: half,color: black,),
      ],
    );
  }
}

class ImagesWidget extends StatelessWidget {
  final String imageName;
  const ImagesWidget({Key? key, required this.imageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(image: NetworkImage(imageName));
  }
}
