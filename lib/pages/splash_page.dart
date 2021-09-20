import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_with_provider/component/button.dart';
import 'package:login_with_provider/model/button_model.dart';
import 'package:login_with_provider/pages/login_page.dart';
import 'package:login_with_provider/theme/theme.dart';
import 'package:login_with_provider/widget/button_material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/bg_splash.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: blackColor.withOpacity(0.3),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Wonderful\nIndonesia',
                    style: h1Bold.copyWith(
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Introducing Indonesia, which has\nmany beautiful places. We are\nhere to help you make your\ndreams come true.',
                    style: text1.copyWith(
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 53,
                  ),
                  ElevatedButton(
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
                    child: PrmButtonMaterial(
                      PrmButtonModel('Get Started'),
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Powered by',
                        style: text2.copyWith(
                          color: whiteColor,
                        ),
                        children: [
                          TextSpan(
                            text: ' tripela',
                            style: text2Bold.copyWith(
                              color: blueColor,
                            ),
                          ),
                          TextSpan(
                            text: ' go',
                            style: text2Bold.copyWith(
                              color: orangeColor,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
