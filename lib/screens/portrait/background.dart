import 'package:about_app/utils/components/app_components.dart';
import 'package:about_app/utils/constant/app_color.dart';
import 'package:about_app/utils/responsive.dart';
import 'package:about_app/utils/shared/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Background extends StatelessWidget {
  const Background({super.key});
  static const routeName = 'education';

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      mobile: Scaffold(
        floatingActionButton: const FAB(),
        appBar: AppBar(
            centerTitle: false,
            title: Text(
              'Background',
              style: GoogleFonts.quicksand(
                  fontSize: ScreenUtil().setSp(17),
                  fontWeight: FontWeight.w700),
            ),
            backgroundColor: AppPalette.primaryColor),
        backgroundColor: AppPalette.whiteColor,
        body: Padding(
          padding: REdgeInsets.symmetric(horizontal: 28),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: ScreenUtil().setHeight(22)),
                const Acadmics(),
                SizedBox(
                  height: ScreenUtil().setHeight(22),
                ),
                const Skills()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
