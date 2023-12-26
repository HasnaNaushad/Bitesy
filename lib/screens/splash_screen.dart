
import 'dart:async';

import 'package:bitesy/screens/home_screen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>HomeScreen()));
    });


    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/bitesysplash.jpeg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.srcOver),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bitesy',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white70, fontStyle: FontStyle.italic),
              ),
              SizedBox(height:0),
              Text(
                'bites easy',
                style: TextStyle(fontSize: 15, color: Colors.white30,),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
