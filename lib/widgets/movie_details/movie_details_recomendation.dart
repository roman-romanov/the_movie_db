import 'package:flutter/material.dart';
import 'package:the_movie_db/styles/const.dart';
import 'package:the_movie_db/styles/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecomendationWidget extends StatelessWidget {
  const RecomendationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var movies = [
      RecomendationMovies(
          imageName:
              'https://www.themoviedb.org/t/p/w500_and_h282_face/jlGmlFOcfo8n5tURmhC7YVd4Iyy.jpg',
          movieName: theSuisudeSquad),
      RecomendationMovies(
          imageName:
              'https://www.themoviedb.org/t/p/w500_and_h282_face/xXHZeb1yhJvnSHPzZDqee0zfMb6.jpg',
          movieName: forsageNine),
      RecomendationMovies(
          imageName:
              'https://www.themoviedb.org/t/p/w500_and_h282_face/wPjtacig0kIkVcTQmXoNt6jbMwo.jpg',
          movieName: 'Красотка на взводе'),
      RecomendationMovies(
          imageName:
              'https://www.themoviedb.org/t/p/w500_and_h282_face/rUoGZuscSG4fQP3I56ndadu2A8E.jpg',
          movieName: 'Последний наемник'),
      RecomendationMovies(
          imageName:
              'https://www.themoviedb.org/t/p/w500_and_h282_face/8s4h9friP6Ci3adRGahHARVd76E.jpg',
          movieName: 'Космический джем: Новое поколение'),
      RecomendationMovies(
          imageName:
              'https://www.themoviedb.org/t/p/w500_and_h282_face/tehpKMsls621GT9WUQie2Ft6LmP.jpg',
          movieName: 'Судная ночь навсегда'),
      RecomendationMovies(
          imageName:
              'https://www.themoviedb.org/t/p/w500_and_h282_face/e3JXvbbWNARPqMURImTALZBHVME.jpg',
          movieName: 'Кроваво-красное небо'),
      RecomendationMovies(
          imageName:
              'https://www.themoviedb.org/t/p/w500_and_h282_face/2BftdeCkD7uf68KUxaKRBxtsmZZ.jpg',
          movieName: vivo),
      RecomendationMovies(
          imageName:
              'https://www.themoviedb.org/t/p/w500_and_h282_face/j28p5VwI5ieZnNwfeuZ5Ve3mPsn.jpg',
          movieName: 'Главный герой'),
      RecomendationMovies(
          imageName:
              'https://www.themoviedb.org/t/p/w500_and_h282_face/1TkU6gJNpNPZzZdQVvdJCTDi32f.jpg',
          movieName: 'Телохранитель жены киллера'),
      RecomendationMovies(
          imageName:
              'https://www.themoviedb.org/t/p/w500_and_h282_face/dq18nCTTLpy9PmtzZI6Y2yAgdw5.jpg',
          movieName: 'Черная вдова'),
      RecomendationMovies(
          imageName:
              'https://www.themoviedb.org/t/p/w500_and_h282_face/iTgM25ftE7YtFgZwUZupVp8A61S.jpg',
          movieName: time),
      RecomendationMovies(
          imageName:
              'https://www.themoviedb.org/t/p/w500_and_h282_face/ngT5lZ37bvryz5popo1IDOh03WL.jpg',
          movieName: pig),
    ];

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(width: widthInfifnity, height: half, color: black),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(recomendation, style: nameTwentyFour),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          height: 184,
          width: widthInfifnity,
          child: Scrollbar(
            child: ListView.builder(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return movies[index];
                }),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/images/facebook.svg', color: black),
                  SvgPicture.asset('assets/images/twitter.svg', color: black),
                  SvgPicture.asset('assets/images/instagram.svg', color: black),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(height: 30.0, width: half, color: black),
                  ),
                  SvgPicture.asset('assets/images/glyphicons.svg',
                      color: black),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Text('Исходное название', style: nameTwentyBlack),
            Text(cruiseJungle, style: nameTwentySimple),
            SizedBox(height: 20.0),
            Text(status, style: nameTwentyBlack),
            Text('Выпущено', style: nameTwentySimple),
            SizedBox(height: 20.0),
            Text('Исходный язык', style: nameTwentyBlack),
            Text(english, style: nameTwentySimple),
            SizedBox(height: 20.0),
            Text(budget, style: nameTwentyBlack),
            Text('\$200 000 000.00', style: nameTwentySimple),
            SizedBox(height: 20.0),
            Text('Сборы', style: nameTwentyBlack),
            Text('\$173 743 828.00', style: nameTwentySimple),
            SizedBox(height: 30.0),
            Text(keywords, style: nameTwentyFour),
            SizedBox(height: 10.0),
            Container(
              width: widthInfifnity,
              child: Row(
                children: [
                  Container(
                      color: Colors.grey.shade400,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Джунгли', style: nameSeventeen))),
                  SizedBox(width: 5.0),
                  Container(
                      color: Colors.grey.shade400,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(riverboat, style: nameSeventeen))),
                  SizedBox(width: 5.0),
                  Container(
                      color: Colors.grey.shade400,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('1910', style: nameSeventeen))),
                  SizedBox(width: 5.0),
                ],
              ),
            )
          ],
        ),
      )
    ]);
  }
}

class RecomendationMovies extends StatelessWidget {
  final String imageName;

  final String movieName;
  const RecomendationMovies(
      {Key? key, required this.imageName, required this.movieName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: 174,
        width: 260,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
                clipBehavior: Clip.hardEdge,
                child: Image(image: NetworkImage(imageName))),
            Table(columnWidths: {
              1: FixedColumnWidth(45.0)
            }, children: [
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(movieName, overflow: TextOverflow.ellipsis),
                  ),
                  Text('100%')
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}
