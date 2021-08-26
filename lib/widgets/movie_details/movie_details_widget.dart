import 'package:flutter/material.dart';
import 'movie_detaills_main_info_widget.dart';
import 'package:the_movie_db/const/const.dart';

import 'movie_details_screen_cast_widget.dart';
import 'movie_details_social_network.dart';

class MovieDetailsWidget extends StatefulWidget {
  final int movieId;
  const MovieDetailsWidget({Key? key, required this.movieId}) : super(key: key);

  @override
  _MovieDetailsWidgetState createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          title: Text(cruiseJungle),
          centerTitle: true,
        ),
        body: ListView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            MovieDeailsMainInfoWidget(),
            MovieDetailsScreenCastWidget(),
            SocialNetworkWidget(),
          ],
        ),
      );
    });
  }
}
