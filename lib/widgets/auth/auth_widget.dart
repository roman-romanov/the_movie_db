import 'package:flutter/material.dart';
import 'header_widget.dart';

class AuthWidget extends StatefulWidget {
  final String? title;
  const AuthWidget({Key? key, this.title}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        return Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            title: Text('Войти в свою учётную запись'),
            centerTitle: true,
          ),
          body: ListView(
            physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              HeaderWidget(),
            ],
          ),
        );
      });
    });
  }
}
