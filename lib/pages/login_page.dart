import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_with_provider/component/button.dart';
import 'package:login_with_provider/model/button_model.dart';
import 'package:login_with_provider/model/login_account.dart';
import 'package:login_with_provider/pages/Verification/verificaton_page1.dart';
import 'package:login_with_provider/pages/forgot_password.dart';
import 'package:login_with_provider/pages/home_page.dart';
import 'package:login_with_provider/pages/signup_page.dart';
import 'package:login_with_provider/theme/theme.dart';
import 'package:login_with_provider/widget/button_material.dart';
import 'package:login_with_provider/widget/loginAcc_card.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      "Hello There, Let's Begin",
                      style: h3Bold.copyWith(
                        color: blackColor,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Login and Get Started',
                      style: text2.copyWith(
                        color: blackColor,
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 48,
              // ),
              // Container(
              //   height: 100,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage('assets/illustration/img_travelMode.png'),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 50,
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
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPWPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Forgot Password?",
                      style: text2Bold.copyWith(
                        color: blackColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              // LoginButton(),
              ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(blueColor),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    // MaterialPageRoute(
                    //   builder: (context) => HomePage(),
                    // ),
                    MaterialPageRoute(
                      builder: (context) => VerificationPage1(),
                    ),
                  );
                },
                child: PrmButtonMaterial(
                  PrmButtonModel('Login'),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Or Login with..',
                  style: text2.copyWith(color: greyColor2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  LoginaccCard(
                    LoginAccount('assets/illustration/img_fbLogo.png'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  LoginaccCard(
                    LoginAccount('assets/illustration/img_googleLogo.png'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  LoginaccCard(
                    LoginAccount('assets/illustration/img_appleLogo.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: text2.copyWith(
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: text2Bold.copyWith(
                        color: blackColor,
                      ),
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
