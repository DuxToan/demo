import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';


class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new HomeScreen(),
      backgroundColor: Colors.green,
      title: new Text('o7planning.org',textScaleFactor: 2,),
      image: Image.asset('assets/scr1.png'),
      loadingText: Text("Loading"),
      photoSize: 110.0,
      loaderColor: Colors.red,
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("Flutter SplashScreen")
      ),
      body: Center(
          child:Text("Welcome to Home Page",
              style: TextStyle( color: Colors.black, fontSize: 30)
          )
      ),
    );
  }
}