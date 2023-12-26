import 'package:bitesy/assets/widgets/chipwidget.dart';
import 'package:bitesy/assets/widgets/gridviewwidget.dart';
import 'package:bitesy/assets/widgets/loadingerrorwidget.dart';
import 'package:bitesy/screens/recipe_detail.dart';
import 'package:flutter/material.dart';

import '../models/recipe.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late FocusNode _searchFocusNode;

  @override
  void initState() {
    super.initState();
    _searchFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Recipe> recipes = sampleRecipes;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(97.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.orange,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();

              // Add functionality for the hamburger menu
            },

          ),
          actions: [
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                // Add functionality for the heart icon
              },
            ),
          ],
          title: Center(
            child: Text(
              'Bitesy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 35.0,
                margin: EdgeInsets.symmetric(horizontal: 3.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: TextField(
                        focusNode: _searchFocusNode,
                        style: TextStyle(fontSize: 14.0),
                        decoration: InputDecoration(
                          hintText: 'Search',
                          contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  opacity: 20,
                  image: AssetImage("lib/assets/hungrybitesy.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(25),
                ),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You hungry?",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "We'll pick a lunch menu for you",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ),
          ChipWidget(),
          SizedBox(height: 16,),
          Expanded(child: GridViewWidget()),
        ],
      ),
    );

  }
}
