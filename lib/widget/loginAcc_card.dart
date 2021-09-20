import 'package:flutter/material.dart';
import 'package:login_with_provider/model/login_account.dart';
import 'package:login_with_provider/theme/theme.dart';

class LoginaccCard extends StatelessWidget {

  LoginAccount loginAccount;

  LoginaccCard(this.loginAccount);

  // const LoginaccCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          border: Border.all(color: greyColor2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(loginAccount.imageUrl),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
