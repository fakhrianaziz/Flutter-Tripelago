import 'package:flutter/material.dart';
import 'package:login_with_provider/model/verificationCard_model.dart';
import 'package:login_with_provider/theme/theme.dart';

class VerificationCard extends StatelessWidget {
  VerificationModel verificationModel;

  VerificationCard(this.verificationModel);

  // const VerificationCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 98,
      decoration: BoxDecoration(
        color: greyColor4,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              verificationModel.imageUrl,
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${verificationModel.titleModel}',
                  style: text2.copyWith(
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${verificationModel.textModel}',
                  style: text2.copyWith(
                    color: blackColor,
                  ),
                ),
              ],
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.chevron_right_outlined,
                color: blackColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
