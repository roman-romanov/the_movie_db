import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_movie_db/widgets/main_screen/main_screen_widget.dart';
import 'widgets/auth/auth_widget.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Movie DB',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: const Color.fromRGBO(3, 37, 65, 1),
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.white),
          appBarTheme:
              AppBarTheme(backgroundColor: const Color.fromRGBO(3, 37, 65, 1))),

      routes: {
        '/auth_widget': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreen(),
      },
      //home: AuthWidget(title: 'The Movie DB'),
      initialRoute: '/auth_widget',
      onGenerateRoute: (RouteSettings settings) {
        return PageRouteBuilder(pageBuilder: (context, _, __) {
          return Scaffold(
            body: MainScreen(),
          );
        });
      },
    );
  }
}
