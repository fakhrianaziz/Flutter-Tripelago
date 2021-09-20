import 'package:flutter/material.dart';
import 'package:login_with_provider/model/verificationCard_model.dart';
import 'package:login_with_provider/theme/theme.dart';
import 'package:login_with_provider/widget/verification_card.dart';

class VerificationPage1 extends StatelessWidget {
  const VerificationPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor5,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 50,
              ),
              child: Container(
                width: double.infinity,
                height: 126,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/illustration/img_confirmed.png',
                      width: 120.24,
                      height: 126,
                      // fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Verification',
                          style: h2Bold.copyWith(color: blackColor),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Select a Verification\nMethod',
                          style: text1Medium.copyWith(color: blackColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/illustration/btn-back.png',
                      width: 40,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 200,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: edge,
                      vertical: 0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Choose one of the methods below\nto get a verification code',
                          style: text1.copyWith(
                            color: blackColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: VerificationCard(
                            VerificationModel(
                              'assets/illustration/icon_smartphone.png', // imageUrl
                              'SMS to', // titleModel
                              '08**-****-*979', // textModel
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: VerificationCard(
                            VerificationModel(
                              'assets/illustration/icon_mail.png', // imageUrl
                              'Email to', // titleModel
                              'jhon.doe@example.com', // textModel
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
