
import 'package:flutter/material.dart';

class Movie {
  final AssetImage imageName;
  final String title;
  final String time;
  final String description;
  Movie(
      {required this.imageName,
      required this.title,
      required this.time,
      required this.description});
}
