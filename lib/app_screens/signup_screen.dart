

import 'package:flutter/material.dart';
import 'package:stitch_vine/app_screens/login_screen.dart';
import 'package:stitch_vine/utils/colors.dart';
import 'package:stitch_vine/utils/custom_package.dart';
import 'package:stitch_vine/utils/size_config.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() =>
      _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _controller =  TextEditingController();
  var items = ['Not Specified', 'Male', 'Female'];

  bool isInput = true;

  bool _isActive = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Container(
        padding: EdgeInsets.only(
          top: getProportionateScreenHeight(60),
          left: getProportionateScreenWidth(22),
          right: getProportionateScreenWidth(25),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: blackIconColor,
                    size: 18,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                createGeneralText(
                    inputText: 'New Customer',
                    fontSize: 24,
                    family: 'Poppins-Bold',
                    weight: FontWeight.w700,
                    colorName: textColor4,
                    letterSpace: 0),
              ]),
              SizedBox(
                height: getProportionateScreenHeight(24),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (() {
                      setState(() {
                        _isActive = false;
                      });
                    }),
                    child: Column(
                      children: [
                        createGeneralText(
                            inputText: "PERSONAL DATA",
                            fontSize: 10,
                            family: 'Poppins-Medium',
                            weight: FontWeight.w500,
                            colorName: !_isActive
                                ? kPrimaryColor
                                : inactiveColor,
                            letterSpace: 1.25),
                        if (!_isActive)
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                        Container(
                          margin: EdgeInsets.only(
                              top: getProportionateScreenHeight(3)),
                          height: getProportionateScreenHeight(2),
                          width: getProportionateScreenWidth(161),
                          color: !_isActive
                              ? kPrimaryColor
                              : backGroundColor,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (() {
                      setState(() {
                        _isActive = true;
                      });
                    }),
                    child: Column(
                      children: [
                        createGeneralText(
                            inputText: "MEASUREMENT INFO",
                            fontSize: 10,
                            family: 'Poppins-Medium',
                            weight: FontWeight.w500,
                            colorName: _isActive
                                ? kPrimaryColor
                                : inactiveColor,
                            letterSpace: 1.25),
                        if (_isActive)
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                        Container(
                          margin: EdgeInsets.only(
                              top: getProportionateScreenHeight(3)),
                          height: getProportionateScreenHeight(2),
                          width: getProportionateScreenWidth(161),
                          color: _isActive
                              ? kPrimaryColor
                              : backGroundColor,
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(22)),
              _buildTextField(
                  labeltext: 'Full name',
                  hinttext: 'Adeyinka Adeboye',
                  isInput: true),
              SizedBox(height: getProportionateScreenHeight(39.5)),
              TextField(
                controller: _controller,
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: getProportionateScreenWidth(20)),
                  labelText: 'Gender',
                  labelStyle: TextStyle(
                      fontSize: getProportionateScreenHeight(12),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.6)),
                  hintText: '· Gender',
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.87),
                    fontSize: getProportionateScreenWidth(16),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.6), width: 2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.6), width: 1.5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: PopupMenuButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    onSelected: (String value) {
                      _controller.text = value;
                    },
                    itemBuilder: (BuildContext context) {
                      return items.map<PopupMenuItem<String>>((String value) {
                        return  PopupMenuItem(
                            value: value,
                            child:  Text('· $value'));
                      }).toList();
                    },
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              _buildTextField(
                  labeltext: 'Email Address',
                  hinttext: 'adeyinkaadeboye@gmail.com',
                  isInput: false),
              SizedBox(height: getProportionateScreenHeight(38)),
              _buildTextField(
                  labeltext: 'Phone Number',
                  hinttext: '+234 813 631 6154',
                  isInput: false),
              SizedBox(height: getProportionateScreenHeight(38)),
              createButton(
                  context: context,
                  height: 48,
                  width: 303,
                  buttonColor: kPrimaryColor,
                  nextPage: const LogInScreen(),
                  buttonText: 'Next',
                  buttoTextSize: 16,
                  buttonTextfamily: 'Poppins-Medium',
                  buttonTextweight: FontWeight.w500,
                  buttonTextColor: backGroundColor,
                  space: 0.06),
            ],
          ),
        ),
      ),
    );
  }

  TextField _buildTextField(
      {required String labeltext,
      required String hinttext,
      required bool isInput}) {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
        labelText: labeltext,
        labelStyle: TextStyle(
            fontSize: getProportionateScreenHeight(12),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            color:
                isInput ? kPrimaryColor : Colors.black.withOpacity(0.6)),
        hintText: hinttext,
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.87),
          fontSize: getProportionateScreenWidth(16),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: isInput
                  ? kPrimaryColor
                  : Colors.black.withOpacity(0.6),
              width: 2),
          borderRadius: BorderRadius.circular(10.0),
        ),
        floatingLabelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: isInput
                  ? kPrimaryColor
                  : Colors.black.withOpacity(0.6),
              width: 1.5),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}