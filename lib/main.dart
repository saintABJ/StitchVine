//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:stitch_vine/app_screens/splash_screen.dart';
import 'package:get/get.dart';



void main() { 
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainSreen(),
    );
  }
}

class MainSreen extends StatelessWidget {
  const MainSreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        textTheme: TextTheme(         
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        
      ),
      home: SplashScreen(),
    );
  }
}

