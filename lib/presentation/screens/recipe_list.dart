import 'package:coocko/presentation/widgets/tile.dart';
import 'package:coocko/test_data/test%20recipe.dart';
import 'package:flutter/material.dart';

class RecipeListScreen extends StatelessWidget {
  const RecipeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: CoockoTile(
            backgroundColor: Color(0xc6e9a6),
          ),
        ),
      ),
    );
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            elevation: 0,
            snap: false,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Hey there'),
            ),
            backgroundColor: Colors.red,
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text('Scroll to see the SliverAppBar in effect.'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final recipe = listRecipes[index];

                return CoockoTile();
              },
              childCount: listRecipes.length,
            ),
          )
        ],
      ),
    );
  }
}
