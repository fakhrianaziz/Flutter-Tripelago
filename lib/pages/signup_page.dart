import 'package:flutter/material.dart';
import 'package:login_with_provider/component/button.dart';
import 'package:login_with_provider/model/button_model.dart';
import 'package:login_with_provider/theme/theme.dart';
import 'package:login_with_provider/widget/button_material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _obscureText = true;

  void _togglePasswordView() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30,
          ),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: whiteColor,
                      shape: CircleBorder(
                        side: BorderSide(
                          color: greyColor3,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.chevron_left),
                      iconSize: 20,
                      color: blackColor,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Create New Account",
                    style: h3Bold.copyWith(
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Sign Up and Get Started',
                    style: text2.copyWith(
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Container(
                    height: 172,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/illustration/img_myApp.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 56,
                    width: double.infinity,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: text1.copyWith(color: greyColor2),
                        hintText: "jhon.doe@gmail.com",
                        hintStyle: text2.copyWith(color: greyColor2),
                        fillColor: greyColor1,
                        filled: true,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: greyColor2,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: blueColor,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Container(
                    height: 56,
                    width: double.infinity,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                        labelStyle: text1.copyWith(color: greyColor2),
                        hintText: "0821-7878-7878",
                        hintStyle: text2.copyWith(color: greyColor2),
                        fillColor: greyColor1,
                        filled: true,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: greyColor2,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: blueColor,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 56,
                    width: double.infinity,
                    child: TextFormField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: text1.copyWith(color: greyColor2),
                        hintText: "Type your password",
                        hintStyle: text2.copyWith(color: greyColor2),
                        fillColor: greyColor1,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: greyColor2,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: blueColor,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(_obscureText
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(blueColor),
                    ),
                    onPressed: () {},
                    child: PrmButtonMaterial(
                      PrmButtonModel('Create Account'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
