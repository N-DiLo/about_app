import 'package:about_app/utils/components/app_components.dart';
import 'package:about_app/utils/constant/app_color.dart';
import 'package:about_app/utils/constant/app_text.dart';
import 'package:about_app/utils/responsive.dart';
import 'package:about_app/utils/shared/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../landscape/background.dart/background_view.dart';
import '../landscape/background.dart/background_view_model.dart';

class Background extends StatelessWidget {
  Background({super.key});
  static const routeName = 'education';

  final bckgrndModel = BackgrndModel();

  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;

    return ScreenLayout(
      mobile: OrientationLayout(
        portrait: Scaffold(
          floatingActionButton: const FAB(),
          appBar: AppBar(
            elevation: 0,
            leading: GestureDetector(
              onTap: () => bckgrndModel.popBack(context),
              child: const Icon(
                Icons.arrow_back_ios_rounded,
              ),
            ),
            title: AppBarText(
              text: bckgrndModel.appBarTitle,
              color: whiteColor,
            ),
            backgroundColor: primaryColor,
          ),
          backgroundColor: AppPalette.whiteColor,
          body: Padding(
            padding: REdgeInsets.symmetric(horizontal: mWidth * 0.06),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: mHeight * 0.022,
                  ),
                  Acadmics(),
                  SizedBox(
                    height: mHeight * 0.022,
                  ),
                  Skills()
                ],
              ),
            ),
          ),
        ),
        landscape: Scaffold(
          floatingActionButton: const LandscapeFAB(),
          appBar: AppBar(
            elevation: 0,
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios_rounded,
              ),
            ),
            title: AppBarText(
              text: bckgrndModel.appBarTitle,
              color: whiteColor,
            ),
            backgroundColor: primaryColor,
          ),
          backgroundColor: whiteColor,
          body: BackgroundView(),
        ),
      ),
    );
  }
}
