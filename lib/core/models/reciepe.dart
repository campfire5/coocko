// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Recipe {
  String title;
  String description;
  String? image;
  Color color;
  Recipe(
      {required this.title,
      required this.description,
      this.image,
      required this.color})
      : assert(title.isNotEmpty && description.isNotEmpty);
}

class Step {
  Duration? duration;
  String? icon;
  String title;

  Step({
    this.duration,
    this.icon,
    required this.title,
  });
}
