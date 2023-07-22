import 'package:coocko/presentation/widgets/tile.dart';
import 'package:coocko/test_data/test%20recipe.dart';
import 'package:flutter/material.dart';

class RecipeListScreen extends StatelessWidget {
  const RecipeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff172843),
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            elevation: 0,
            snap: false,
            floating: false,
            pinned: true,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                'Hey there',
                style: TextStyle(color: Colors.white),
              ),
            ),
            backgroundColor: Color(0xff23344f),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text(
                  'Scroll to see the SliverAppBar in effect.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final recipe = listRecipes[index];

                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: CoockoStepTile(
                    backgroundColor: recipe.color,
                  ),
                );
              },
              childCount: listRecipes.length,
            ),
          )
        ],
      ),
    );
  }
}
