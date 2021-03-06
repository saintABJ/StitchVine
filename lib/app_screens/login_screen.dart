import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stitch_vine/utils/colors.dart';
import 'package:stitch_vine/utils/custom_package.dart';
import 'package:stitch_vine/utils/size_config.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: backGroundColor,
        body: Container(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(45),
          right: getProportionateScreenWidth(45)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(77),
            width: double.infinity,
          ),
          Container(
              width: getProportionateScreenWidth(190),
              height: getProportionateScreenHeight(31),
              child: const Image(image: AssetImage('images/sv2.png'))),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          customizedText(
              inputText: 'Welcome Back!',
              fontSize: 24,
              family: 'Poppins-SemiBold',
              weight: FontWeight.w600,
              colorName: blackIconColor,
              letterSpace: 0),
          SizedBox(
            height: getProportionateScreenHeight(65),
          ),
          Container(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(15)),
            height: getProportionateScreenHeight(50),
            width: getProportionateScreenWidth(285),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: containerBorderColor),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Email Address',
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: hintTextColor,
                    fontSize: getProportionateScreenHeight(12),
                    fontFamily: 'Poppins'),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Container(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(15)),
            height: getProportionateScreenHeight(50),
            width: getProportionateScreenWidth(285),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: containerBorderColor),
            ),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: hintTextColor,
                      fontSize: getProportionateScreenHeight(12),
                      fontFamily: 'Poppins'),
                  suffixIcon: const Icon(
                    Icons.visibility,
                    color: kPrimaryColor,
                    size: 20,
                  )),
              obscureText: true,
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: 'Poppins-Medium',
                      fontSize: getProportionateScreenHeight(12),
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ))
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          customizedButton(
              context: context,
              height: 50,
              width: 285,
              buttonColor: kPrimaryColor,
              nextPage: const LogInScreen(),
              buttonText: 'Log in',
              buttoTextSize: 16,
              buttonTextfamily: 'Poppins-Medium',
              buttonTextweight: FontWeight.w500,
              buttonTextColor: backGroundColor,
              space: 0.06),
          SizedBox(height: getProportionateScreenHeight(208)),
          customizedText(
              inputText: 'or Continue Using',
              fontSize: 12,
              family: 'Poppins-Regular',
              weight: FontWeight.w400,
              colorName: hintTextColor,
              letterSpace: 0),
          SizedBox(
            height: getProportionateScreenHeight(8),
          ),
          const Image(image: AssetImage('images/googlelogo.png')),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customizedText(
                  inputText: "Don???t have an account?",
                  fontSize: 14,
                  family: 'Poppins',
                  weight: FontWeight.w400,
                  colorName: hintTextColor,
                  letterSpace: 0),
              TextButton(
                  onPressed: () {
              //       Navigator.push(
              // context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                  Get.toNamed('/signup');
                  },
                  child: customizedText(
                      inputText: "Sign up",
                  fontSize: 14,
                  family: 'Poppins',
                  weight: FontWeight.bold,
                  colorName: kPrimaryColor,
                  letterSpace: 0))
            ],
          )
        ],
      ),
    ));
  }
}