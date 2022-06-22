import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stitch_vine/app_screens/get_started_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  State<SplashScreen> createState() => _SplashscreenState();
}


class _SplashscreenState extends State<SplashScreen> {

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(
        seconds: 6
      ),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Started())));   
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff781596),
      body: Center(
        child: Image(
            image: AssetImage('images/sv1.png')
        ),
      )
    );
  }
}

