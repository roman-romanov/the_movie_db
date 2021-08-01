import 'dart:ui';
import 'package:flutter/material.dart';

final textStyle = const TextStyle(fontSize: 16, color: Colors.black);
final textStyleLP = const TextStyle(fontSize: 16, color: Color(0xFF212529));

final textFieldDecoration = InputDecoration(
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: Color(0xFF01B4E4))),
  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
  isCollapsed: true,
);

final blueColor = const TextStyle(color: Color(0xFF01B4E4), fontSize: 18);

final buttonBlueStyle = ButtonStyle(
  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20)),
  textStyle: MaterialStateProperty.all(
      TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
  backgroundColor: MaterialStateProperty.all(Color(0xFF01B4E4)),
  foregroundColor: MaterialStateProperty.all(Colors.white),
);

final blueButtonStyle = TextButton.styleFrom(
  primary: Color(0xFF01B4E4),
  textStyle: TextStyle(fontSize: 16),
);
final blueLinkStyle = TextStyle(color: Color(0xFF01B4E4), fontSize: 16);

final errorRedText = const TextStyle(color: Colors.red);

final bottomNavigationColor = BottomNavigationBarThemeData(
    backgroundColor: const Color.fromRGBO(3, 37, 65, 1),
    unselectedItemColor: Colors.grey,
    selectedItemColor: Colors.white);
