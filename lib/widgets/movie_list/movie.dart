import 'package:flutter/material.dart';

class Movie {
  final int id;
  final AssetImage imageName;
  final String title;
  final String time;
  final String description;
  Movie(
      {required this.id,
      required this.imageName,
      required this.title,
      required this.time,
      required this.description});
}
