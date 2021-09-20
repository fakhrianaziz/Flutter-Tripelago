import 'package:flutter/material.dart';
import 'package:login_with_provider/model/button_model.dart';
import 'package:login_with_provider/theme/theme.dart';

class PrmButtonMaterial extends StatelessWidget {

  PrmButtonModel prmButtonModel;

  PrmButtonMaterial(this.prmButtonModel);

  // const PrmButtonMaterial({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      // child: ElevatedButton(
      //   style: ButtonStyle(
      //     foregroundColor: MaterialStateProperty.all(blueColor),
      //   ),
      //   onPressed: () {
      //     // Navigator.push(
      //     //   context,
      //     //   MaterialPageRoute(
      //     //     builder: (context) => LoginPage(),
      //     //   ),
      //     // );
      //   },
      //   child: Text(
      //     prmButtonModel.textButton,
      //     style: text1Medium.copyWith(
      //       color: whiteColor,
      //     ),
      //   ),
      // ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            prmButtonModel.textButton,
            style: text1Medium.copyWith(color: whiteColor),
          ),
        ),
      ),
    );
  }
}
