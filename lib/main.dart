import 'package:about_app/screens/portrait/background.dart';
import 'package:about_app/screens/portrait/experience.dart';
import 'package:about_app/screens/portrait/portfolio.dart';
import 'package:about_app/screens/splash.dart';
import 'package:about_app/utils/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeRight
  ]);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark,
    statusBarColor: AppPalette.primaryColor,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash(),
      //
      routes: {
        Background.routeName: (ctx) => Background(),
        ExpScreen.routeName: (ctx) => ExpScreen(),
        PortFolio.routeName: (ctx) => const PortFolio(),
      },
    );
  }
}
