import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:stitch_vine/app_screens/login_screen.dart';
import 'package:stitch_vine/utils/colors.dart';
import 'package:stitch_vine/utils/custom_package.dart';
import 'package:stitch_vine/utils/size_config.dart';

class Started extends StatefulWidget {
  const Started({Key? key}) : super(key: key);

  @override
  State<Started> createState() => _StartedState();
}

class _StartedState extends State<Started> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/Image.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(392),
                  left: getProportionateScreenWidth(28),
                  right: getProportionateScreenWidth(27),
                  bottom: getProportionateScreenHeight(15),
                ),
                child: BlurryContainer(
                  borderRadius: BorderRadius.circular(8),
                  color: containerColor,
                  blur: 10,
                  height: getProportionateScreenHeight(375),
                  width: getProportionateScreenWidth(320),
                  child: PageView(
                    controller: controller,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: getProportionateScreenHeight(52),
                          ),
                          Center(
                            child: customizedText(
                              inputText: 'Join the best\ntailoring app',
                              fontSize: 28,
                              family: 'Vice City Sans',
                              weight: FontWeight.w700,
                              colorName: backGroundColor,
                              letterSpace: 0.36,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(30),
                          ),
                          Center(
                            child: customizedText(
                              inputText:
                                  'Take your tailoring to the next level\nwith Stitch Vine',
                              fontSize: 15,
                              family: 'Inter',
                              weight: FontWeight.w400,
                              colorName: backGroundColor,
                              letterSpace: -0.24,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(48),
                          ),
                          customizedButton(
                              context: context,
                              height: 46,
                              width: 230,
                              buttonColor: kPrimaryColor,
                              nextPage: const LogInScreen(),
                              buttonText: 'Get started',
                              buttoTextSize: 15,
                              buttonTextfamily: 'Poppins',
                              buttonTextweight: FontWeight.w600,
                              buttonTextColor: backGroundColor,
                              space: 0.06),
                          SizedBox(
                            height: getProportionateScreenHeight(40),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: getProportionateScreenHeight(5),
                                width: getProportionateScreenWidth(5),
                                decoration: const BoxDecoration(
                                    color: backGroundColor,
                                    shape: BoxShape.circle),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(10),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: getProportionateScreenWidth(1),
                                    vertical: getProportionateScreenHeight(1)),
                                height: getProportionateScreenHeight(9),
                                width: getProportionateScreenWidth(9),
                                decoration: const BoxDecoration(
                                    color: backGroundColor,
                                    shape: BoxShape.circle),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: getProportionateScreenWidth(1),
                                      vertical: getProportionateScreenHeight(1)),
                                  height: getProportionateScreenHeight(7),
                                  width: getProportionateScreenWidth(7),
                                  decoration: const BoxDecoration(
                                      color: Colors.black, shape: BoxShape.circle),
                                  child: Container(
                                    height: getProportionateScreenHeight(5),
                                    width: getProportionateScreenWidth(5),
                                    decoration: const BoxDecoration(
                                        color: backGroundColor,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(10),
                              ),
                              Container(
                                height: getProportionateScreenHeight(5),
                                width: getProportionateScreenWidth(5),
                                decoration: const BoxDecoration(
                                    color: backGroundColor,
                                    shape: BoxShape.circle),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(10),
                              ),
                              Container(
                                height: getProportionateScreenHeight(5),
                                width: getProportionateScreenWidth(5),
                                decoration: const BoxDecoration(
                                    color: backGroundColor,
                                    shape: BoxShape.circle),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}