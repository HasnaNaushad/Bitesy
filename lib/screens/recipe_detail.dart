import 'package:flutter/material.dart';
import '../models/recipe.dart';

class RecipeDetail extends StatelessWidget {
  final Recipe recipe;

  RecipeDetail(this.recipe);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title,) ,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(recipe.imageUrl),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                recipe.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , color: Colors.orange),
              ),
            ),

            SizedBox(height: 20),
            _buildSubtitle('Ingredients'),
            _buildTextList(recipe.ingredients),

            SizedBox(height: 20),
            _buildSubtitle('Instructions'),
            _buildTextList(recipe.description),

            // Add more details as needed
          ],
        ),
      ),
    );
  }

  Widget _buildSubtitle(String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        subtitle,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildTextList(List<String> texts) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: texts
            .map((text) => Text(
          text,
          style: TextStyle(fontSize: 18),
        ))
            .toList(),
      ),
    );
  }
}
