import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_movie_db/widgets/movie_details/movie_details_content_account.dart';
import 'package:the_movie_db/widgets/movie_details/movie_details_media_widget.dart';
import 'package:the_movie_db/widgets/movie_details/movie_details_recomendation.dart';
import 'package:the_movie_db/widgets/movie_details/movie_details_watch_collection.dart';
import 'movie_detaills_main_info_widget.dart';
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
          title: SvgPicture.asset('assets/images/tmdb_logo.svg',
              color: Colors.blue, height: 40, width: 50),
        ),
        body: ListView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            MovieDeailsMainInfoWidget(),
            MovieDetailsScreenCastWidget(),
            SocialNetworkWidget(),
            MediaWidget(),
            WatchCollectionWidget(),
            RecomendationWidget(),
            ContentAccountWidget(),
          ],
        ),
      );
    });
  }
}
