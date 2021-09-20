import 'package:flutter/material.dart';
import 'package:login_with_provider/pages/home_page.dart';
import 'package:login_with_provider/pages/login_page.dart';
import 'package:login_with_provider/theme/theme.dart';

class WideButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(blueColor),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
        },
        child: Text(
          'Get Started',
          style: text1Medium.copyWith(
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(blueColor),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
        child: Text(
          'Login',
          style: text1Medium.copyWith(
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}

class SignupButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(blueColor),
        ),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => HomePage(),
          //   ),
          // );
        },
        child: Text(
          'Create Account',
          style: text1Medium.copyWith(
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}

class ForgotPWButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(blueColor),
        ),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => HomePage(),
          //   ),
          // );
        },
        child: Text(
          'Reset My Password',
          style: text1Medium.copyWith(
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}