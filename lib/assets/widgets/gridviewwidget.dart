import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/recipe.dart';
import '../../screens/recipe_detail.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({Key? key}) : super(key: key);

  final List<Recipe> recipes = sampleRecipes;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 18,
            mainAxisSpacing: 18,
          ),
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetail(recipes[index]),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      15.0), // Adjust the radius as needed
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        recipes[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      recipes[index].title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.orange),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
