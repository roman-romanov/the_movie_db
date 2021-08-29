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

//******************************************************************************
final backgroundGreyDark = Color.fromRGBO(24, 23, 27, 1);
final greyDark = Color.fromRGBO(22, 21, 25, 1);
final heightFifty = 60.0;
final widthInfifnity = double.infinity;
final verticalDividerThirty =
    VerticalDivider(color: Colors.white, indent: 10, endIndent: 10);
final half = 0.5;
final black = Colors.black;
final white = Colors.white;

final nameTwentySix = TextStyle(fontSize: 26.0, fontWeight: FontWeight.w600);
final nameThirtyTwo =
    TextStyle(color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.w700);
final nameTwentyTwo =
    TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600, color: Colors.white);
final nameSeventeen =
    TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.white);
final nameSixteen =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white);
final nameEighteenWhiteSimple =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white);
final nameSixteenBlack =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black);
final nameSixteenBlackSimple =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black);
final nameSixteenBlackBold =
    TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black);
final nameFifteen =
    TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white);
final nameFifteenBold =
    TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white);
final nameFourteen =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white);

final styleYearOfMovie = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontFamily: 'Times New Roman',
);
//******************************************************************************
final nameSeventeenBlack =
    TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.black);
final nameEighteen = TextStyle(fontSize: 18, fontWeight: FontWeight.w700);
final nameTwentySimple =
    TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w400);
final nameTwentyFour =
    TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700);
final nameTwentyBlack =
    TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700);
final nameTwentyWhite = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.w700,
);
final textAlignCenter = TextAlign.center;
//******************************************************************************