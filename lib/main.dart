//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:stitch_vine/app_screens/login_screen.dart';
import 'package:stitch_vine/app_screens/signup_screen.dart';
import 'package:stitch_vine/app_screens/splash_screen.dart';
import 'package:get/get.dart';



void main() { 
 runApp(const MainSreen());
}


class MainSreen extends StatelessWidget {
  const MainSreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        textTheme: TextTheme(         
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        
      ),
      initialRoute: '/splash',
      getPages: [
         GetPage(name: "/login", page: () => LogInScreen()),
         GetPage(name: "/getStarted", page: () => Started()),         
         GetPage(name: "/signup", page: () => SignUpScreen()),         
         GetPage(name: "/splash", page: () => SplashScreen()),         
      ],
    );
  }
}

