import 'package:about_app/utils/components/app_components.dart';
import 'package:about_app/utils/constant/app_color.dart';
import 'package:about_app/utils/responsive.dart';
import 'package:about_app/utils/shared/buttons.dart';
import 'package:flutter/material.dart';
import '../landscape/home/home_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final mWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: ScreenLayout(
        mobile: OrientationLayout(
          portrait: Scaffold(
            floatingActionButton: const FAB(),
            backgroundColor: whiteColor,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: mWidth * 0.06),
              child: Column(
                children: [
                  HomeComponents(), //HomeView Header
                  Expanded(
                    child: MediaQuery.removePadding(
                      removeTop: true,
                      context: context,
                      child: SingleChildScrollView(
                        child: HomeButtons(), //HomeView Buttons
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          landscape: Scaffold(
              backgroundColor: whiteColor,
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: mWidth * 0.03),
                child: HomeViewLandscape(),
              )),
        ),
      ),
    );
  }
}
