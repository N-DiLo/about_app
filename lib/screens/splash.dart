import 'dart:async';
import 'package:about_app/screens/portrait/home.dart';
import 'package:about_app/utils/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return Scaffold(
      backgroundColor: AppPalette.primaryColor,
      body: Center(
          child: Image.asset(
        'assets/app-logo.png',
        height: ScreenUtil().setHeight(121),
        width: ScreenUtil().setWidth(133),
      )),
    );
  }
}
