import 'package:flutter/material.dart';
import 'package:login_with_provider/theme/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Text(
          'Home Page',
          style: h3Bold.copyWith(color: blackColor),
        ),
      ),
    );
  }
}
