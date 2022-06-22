import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stitch_vine/app_screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashscreenState();
}


class _SplashscreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(
        seconds: 6
      ),
        () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) =>  Started())));
      
       // Get.to(const Started())    
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

class Started extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Image.png'),
            fit: BoxFit.cover
          )
        ),
        child: SafeArea(
          child: Padding(
            padding:  const EdgeInsets.symmetric(
            horizontal: 28,
              vertical: 45
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               Stack(
                 children: [
                   const Center(
                     child: Image(
                       image: AssetImage('images/Panel.png'),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(
                     horizontal: 28
                   ),
                     child: Center(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           const SizedBox(
                             height: 58,
                           ),
                           const Text(
                             'Join the best\ntailoring app',
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 28,
                               fontWeight: FontWeight.w700
                             ),
                           ),
                           const SizedBox(
                             height: 28,
                           ),
                           const Text(
                             'Take your tailoring to the next level\nwith Stitch Vine',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 15,
                               fontWeight: FontWeight.w400
                             ),
                           ),
                           const SizedBox(
                             height: 48,
                           ),
                           SizedBox(
                             height: 46,
                             width: 230,
                             child: ElevatedButton(
                               onPressed: (){
                                Get.toNamed('/login');
                               },
                               style: ElevatedButton.styleFrom(
                                 primary: const Color(0xff781596),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(8)
                                 )
                               ),
                               child: const Text(
                                 'Get started',
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 15,
                                   fontWeight: FontWeight.w600
                                 ),
                               ),
                             ),
                           ),
                           const SizedBox(
                             height: 40,
                           ),
                           const Image(
                             image: AssetImage('images/Slider.png'),
                           )
                         ],
                       ),
                     ),
                   )
                 ],
               )
              ],
            )
          ),
        ),
      ),
    );
  }
}

// Navigator.pushReplacement(context,
//             MaterialPageRoute(builder: (context) => const Started())));