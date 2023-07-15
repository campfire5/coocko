// ignore_for_file: public_member_api_docs, sort_constructors_first
class Recipe {
  String title;
  String description;
  String? image;
  Recipe({
    required this.title,
    required this.description,
    this.image,
  }) : assert(title.isNotEmpty && description.isNotEmpty);
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
