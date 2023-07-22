import 'package:coocko/presentation/widgets/recipe_tile.dart';
import 'package:flutter/material.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff172843),
        elevation: 0,
        title: const Text('Your recipes'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: const Color(0xff23344f),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return const CoockoRecipeTile();
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
