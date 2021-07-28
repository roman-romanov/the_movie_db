import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        appBarTheme: AppBarTheme(backgroundColor: const Color.fromRGBO(3, 37, 65, 1)),
      ),
      home: AuthWidget(title: 'The Movie DB'),
    );
  }
}
