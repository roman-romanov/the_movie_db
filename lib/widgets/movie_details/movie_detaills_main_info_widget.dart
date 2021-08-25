import 'package:flutter/material.dart';
import 'package:the_movie_db/const/const.dart';
import 'package:the_movie_db/images/app_images.dart';
import 'package:the_movie_db/styles/styles.dart';
import 'package:the_movie_db/widgets/radial_percent/radial_percent_widget.dart';

class MovieDeailsMainInfoWidget extends StatelessWidget {
  const MovieDeailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: backgroundGreyDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _TopPosterWidget(),
          _MovieNameWidget(),
          _ScoreWidget(),
          _SummaryWidget(),
          _OverViewWidget(),
          _PersonWidget(),
        ],
      ),
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        //alignment: Alignment.topRight,
        child: Align(
          // widthFactor: 0.7,
          child: Image(
            image: AppImages.cruise_of_jungles_big,
          ),
        ),
      ),
      Positioned(
        top: 20,
        bottom: 20,
        left: 20,
        child: Image(
          image: AppImages.cruise_of_jungles_little,
        ),
      ),
    ]);
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: RichText(
          textAlign: TextAlign.center,
          maxLines: 3,
          text: TextSpan(
            children: [
              TextSpan(text: cruiseJungle, style: nameTwentySix),
              TextSpan(text: year, style: styleYearOfMovie)
            ],
          )),
    );
  }
}

class _ScoreWidget extends StatelessWidget {
  const _ScoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    RadialPercent(),
                    SizedBox(width: 5),
                    Flexible(
                      child: Text(
                        userCount,
                        style: nameSixteen,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(width: 1, color: Colors.grey, height: 15),
            Flexible(
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.play_arrow, color: Colors.white),
                      SizedBox(width: 5),
                      Flexible(
                        child: Text(
                          playTray,
                          style: nameSixteen,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ],
    );
  }
}

class _SummaryWidget extends StatelessWidget {
  const _SummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(width: double.infinity, height: half, color: black),
        Container(
          alignment: Alignment.center,
          width: widthInfifnity,
          height: heightFifty,
          color: greyDark,
          child: Text(
            raeting,
            style: nameSeventeen,
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
        ),
        Container(width: double.infinity, height: half, color: black),
      ],
    );
  }
}

class _OverViewWidget extends StatelessWidget {
  const _OverViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              overView,
              style: nameTwentyTwo,
            ),
          ),
          SizedBox(height: 10),
          Text(
            overViewText,
            style: nameFifteen,
          ),
        ],
      ),
    );
  }
}

class _PersonWidget extends StatelessWidget {
  const _PersonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Table(
            children: [
              TableRow(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(jaumeColletSerra, style: nameFifteenBold),
                      Text(director, style: nameFourteen),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(michaelGreen, style: nameFifteenBold),
                      Text(screenplay, style: nameFourteen),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Table(
            children: [
              TableRow(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(johnRequa, style: nameFifteenBold),
                      Text(screenplay, style: nameFourteen)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(glennFicara, style: nameFifteenBold),
                      Text(screenplay, style: nameFourteen)
                    ],
                  ),
                ],
              ),
            ],
          ),
           SizedBox(height: 15),
        ],
      ),
    );
  }
}
