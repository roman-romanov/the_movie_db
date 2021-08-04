import 'package:flutter/material.dart';
import 'package:the_movie_db/images/app_images.dart';
import 'package:the_movie_db/widgets/movie_list/movie.dart';

class MovieListWidget extends StatefulWidget {
  MovieListWidget({Key? key}) : super(key: key);

  @override
  _MovieListWidgetState createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final _movies = [
    Movie(
        imageName: AppImages.cruise_of_jungles,
        title: 'Круиз по джунглям (2021)',
        time: '02 Августа, 2021',
        description:
            'Отважная исследовательница дикой природы Лили Хоутон намерена отправиться в верховья Амазонки, чтобы найти легендарное дерево, которое – согласно преданиям южноамериканских индейских племен – обладает магическими целебными свойствами. Сопровождать Лили будут её утонченный брат Макгрегор и бесшабашный капитан круизного пароходика Фрэнк. В дебрях джунглей путников будут подстерегать не только смертельно опасные представители амазонской флоры и фауны, но и ловушки, подстроенные участниками конкурирующей экспедиции, и даже встречи со сверхъестественным.'),
    Movie(
        imageName: AppImages.luka,
        title: 'Лука (2021)',
        time: '17 Июня, 2021',
        description:
            'Свои незабываемые каникулы, в которых есть место и домашней пасте, и мороженному, и бесконечным поездкам на мопеде, мальчик по имени Лука проводит в красивом приморском городке, расположенном на итальянской Ривьере. Ни одно приключение Луки не обходится без участия его нового лучшего друга, и беззаботность отдыха омрачает только лишь тот факт, что на самом деле в облике мальчика скрывается морской монстр из глубин лагуны, на берегу которой стоит городок.'),
    Movie(
        imageName: AppImages.infinite,
        title: 'Бесконечность (2021)',
        time: '09 Сентября, 2021',
        description:
            'Эван Майклс страдает от необычного недуга: он в деталях помнит всё, что с ним происходило в двух прошлых жизнях. В поисках ответов Эван натыкается на древнее тайное общество «Когномина», члены которого, так же как и он, помнят о своих прошлых жизнях. Не понаслышке знакомые с историей, они на протяжении веков контролируют развитие человечества, направляя его в нужную сторону. Эван понимает, что обязан вступить в ряды «Когномины».'),
    Movie(
        imageName: AppImages.robbery,
        title: 'Ограбление по-джентльменски (2021)',
        time: '10 Июня, 2021',
        description:
            'После дерзкого побега из тюрьмы самый известный вор в мире Ричард Пейс заключает сделку с «Командой изгоев», которые грабят богатых и отдают деньги бедным. Под началом бывалого вора-джентльмена новые Робин Гуды нацеливаются на крупнейшее хранилище золотых слитков в мире, владелец которого — Уорнер Шольц — отмывает деньги международных преступников, а по совместительству является давним врагом Пейса. Грабить они будут красиво, задорно и со вкусом — по-джентльменски.'),
    Movie(
        imageName: AppImages.boss_molokosos,
        title: 'Босс-молокосос 2 (2021)',
        time: '02 Июля, 2021',
        description:
            'Продолжение приключений героев мультфильма, с которыми зрители познакомились в предыдущей части "Босс-молокосос" 2017 года.'),
    Movie(
        imageName: AppImages.cruise_of_jungles,
        title: 'Круиз по джунглям (2021)',
        time: '02 Августа, 2021',
        description:
            'Отважная исследовательница дикой природы Лили Хоутон намерена отправиться в верховья Амазонки, чтобы найти легендарное дерево, которое – согласно преданиям южноамериканских индейских племен – обладает магическими целебными свойствами. Сопровождать Лили будут её утонченный брат Макгрегор и бесшабашный капитан круизного пароходика Фрэнк. В дебрях джунглей путников будут подстерегать не только смертельно опасные представители амазонской флоры и фауны, но и ловушки, подстроенные участниками конкурирующей экспедиции, и даже встречи со сверхъестественным.'),
    Movie(
        imageName: AppImages.luka,
        title: 'Лука (2021)',
        time: '17 Июня, 2021',
        description:
            'Свои незабываемые каникулы, в которых есть место и домашней пасте, и мороженному, и бесконечным поездкам на мопеде, мальчик по имени Лука проводит в красивом приморском городке, расположенном на итальянской Ривьере. Ни одно приключение Луки не обходится без участия его нового лучшего друга, и беззаботность отдыха омрачает только лишь тот факт, что на самом деле в облике мальчика скрывается морской монстр из глубин лагуны, на берегу которой стоит городок.'),
    Movie(
        imageName: AppImages.infinite,
        title: 'Бесконечность (2021)',
        time: '09 Сентября, 2021',
        description:
            'Эван Майклс страдает от необычного недуга: он в деталях помнит всё, что с ним происходило в двух прошлых жизнях. В поисках ответов Эван натыкается на древнее тайное общество «Когномина», члены которого, так же как и он, помнят о своих прошлых жизнях. Не понаслышке знакомые с историей, они на протяжении веков контролируют развитие человечества, направляя его в нужную сторону. Эван понимает, что обязан вступить в ряды «Когномины».'),
    Movie(
        imageName: AppImages.robbery,
        title: 'Ограбление по-джентльменски (2021)',
        time: '10 Июня, 2021',
        description:
            'После дерзкого побега из тюрьмы самый известный вор в мире Ричард Пейс заключает сделку с «Командой изгоев», которые грабят богатых и отдают деньги бедным. Под началом бывалого вора-джентльмена новые Робин Гуды нацеливаются на крупнейшее хранилище золотых слитков в мире, владелец которого — Уорнер Шольц — отмывает деньги международных преступников, а по совместительству является давним врагом Пейса. Грабить они будут красиво, задорно и со вкусом — по-джентльменски.'),
    Movie(
        imageName: AppImages.boss_molokosos,
        title: 'Босс-молокосос 2 (2021)',
        time: '02 Июля, 2021',
        description:
            'Продолжение приключений героев мультфильма, с которыми зрители познакомились в предыдущей части "Босс-молокосос" 2017 года.'),
  ];

  var _filteredMovies = <Movie>[];
  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    _searchController.addListener(() {
      _searchMovies();
    });
    _filteredMovies = _movies;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            padding: EdgeInsets.only(top: 75),
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: _filteredMovies.length,
            itemExtent: 163,
            itemBuilder: (context, index) {
              final movie = _filteredMovies[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Stack(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.2)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: Offset(0, 2),
                            )
                          ]),
                      child: Row(
                        children: [
                          Image(image: AssetImage(movie.imageName.assetName)),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 16),
                                  Text(
                                    movie.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    movie.time,
                                    style: TextStyle(color: Colors.grey),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    movie.description,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ]),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(8),
                        onTap: () {},
                      ),
                    )
                  ],
                ),
              );
            }),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Поиск',
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            ),
          ),
        ),
      ],
    );
  }
}
