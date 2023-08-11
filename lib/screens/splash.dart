import 'dart:async';
import 'package:about_app/screens/portrait/home.dart';
import 'package:about_app/utils/constant/app_color.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    splashTimer();
  }

  splashTimer() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, routes);
  }

  routes() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => const HomeView()));
  }

  @override
  Widget build(BuildContext context) {
    final mWidth = MediaQuery.of(context).size.width;
    final mHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
          child: Image.asset(
        appLogo,
        height: mHeight,
        width: mWidth,
      )),
    );
  }
}
