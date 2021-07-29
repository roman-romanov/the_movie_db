import 'package:flutter/material.dart';
import 'package:the_movie_db/styles/styles.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);
  _HeaderWidget createState() => _HeaderWidget();
}

class _HeaderWidget extends State<HeaderWidget> {
  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');

  String? errorLogin = '';
  String? errorPassword = '';

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin') {
      errorLogin = null;
    } else {
      errorLogin = 'Не верный логин';
    }
    if (password == 'admin') {
      errorPassword = null;
    } else {
      errorPassword = 'Не верный пароль';
    }
    if (login == 'admin' && password == 'admin') {
      Navigator.of(context).pushNamed('/main_screen');
      //Заменяет вотрую страничку собой
      //Navigator.of(context).pushReplacementNamed('/main_screen');
    }
    setState(() {});
  }

  void _resetPassword() {}

  @override
  Widget build(BuildContext context) {
    final errorLogin = this.errorLogin;
    final errorPassword = this.errorPassword;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25),
            Text('Войти в свою учётную запись',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              'Чтобы пользоваться правкой и возможностями рейтинга TMDb, а также получить персональные рекомендации, необходимо войти в свою учётную запись. Если у вас нет учётной записи, её регистрация является бесплатной и простой. Нажмите здесь, чтобы начать.',
              style: textStyle,
            ),
            TextButton(
              style: blueButtonStyle,
              onPressed: () {},
              child: Text('Нажмите здесь'),
            ),
            SizedBox(height: 15),
            Text(
                'Если Вы зарегистрировались, но не получили письмо для подтверждения, нажмите здесь, чтобы отправить письмо повторно.',
                style: textStyle),
            TextButton(
                style: blueButtonStyle,
                onPressed: () {},
                child: Text('нажмите здесь')),
            SizedBox(height: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Пользователь', style: textStyleLP),
                TextField(
                  controller: _loginTextController,
                  decoration: textFieldDecoration,
                ),
                if (errorLogin != null) ...[
                  Text(errorLogin, style: errorRedText)
                ],
                SizedBox(height: 15),
                Text('Пароль', style: textStyleLP),
                TextField(
                  controller: _passwordTextController,
                  decoration: textFieldDecoration,
                  obscureText: true,
                ),
                if (errorPassword != null) ...[
                  Text(errorPassword, style: errorRedText)
                ],
              ],
            ),
            SizedBox(height: 25),
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                ElevatedButton(
                  style: buttonBlueStyle,
                  onPressed: () {
                    _auth();
                  },
                  child: Text('Войти'),
                ),
                SizedBox(width: 30),
                TextButton(
                    style: blueButtonStyle,
                    onPressed: () {
                      _resetPassword();
                    },
                    child: Text('Сбросить пароль')),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
