import 'package:demo/view/screens/onboard/login.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: Login(),
      duration: 4000,
      imageSize: 130,
      imageSrc: "assets/images/logo.png",
      text: "Northern Border University",
      textType: TextType.TyperAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
        color: Colors.green[800],
      ),
      backgroundColor: Colors.white,
    );
  }
}
