import 'package:about_app/utils/components/app_components.dart';
import 'package:about_app/utils/constant/app_color.dart';
import 'package:about_app/utils/shared/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FAB(),
      backgroundColor: AppPalette.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              const HomeComponents(), //HomeView Header
              SizedBox(height: ScreenUtil().setHeight(20)),
              const HomeButtons(), //HomeView Buttons
            ],
          ),
        ),
      ),
    );
  }
}
