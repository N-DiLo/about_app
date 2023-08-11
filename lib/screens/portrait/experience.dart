import 'package:about_app/utils/components/app_components.dart';
import 'package:about_app/utils/constant/app_color.dart';
import 'package:about_app/utils/responsive.dart';
import 'package:about_app/utils/shared/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpScreen extends StatelessWidget {
  const ExpScreen({super.key});
  static const routeName = 'expereince';

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      mobile: Scaffold(
        floatingActionButton: const FAB(),
        appBar: AppBar(
            centerTitle: false,
            title: Text(
              'Experience',
              style: GoogleFonts.quicksand(
                  fontSize: ScreenUtil().setSp(17),
                  fontWeight: FontWeight.w700),
            ),
            backgroundColor: AppPalette.primaryColor),
        backgroundColor: AppPalette.whiteColor,
        body: Padding(
          padding: REdgeInsets.symmetric(horizontal: 28),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: ScreenUtil().setHeight(22)),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    text: 'Role Fit\n',
                    style: GoogleFonts.quicksand(
                        fontSize: ScreenUtil().setSp(14),
                        fontWeight: FontWeight.w700,
                        color: AppPalette.textColor),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            '1. Working with different cultures or geographies.\n2. Requiring varied/changing competencies over time.\n3. Implementing new practices, conflict management.\n4. Roles which involve a lot of people interaction.\n5. Roles within sales or business development.',
                        style: GoogleFonts.quicksand(
                            fontSize: ScreenUtil().setSp(12),
                            fontWeight: FontWeight.w500),
                      ),
                    ]),
              ),
              SizedBox(height: ScreenUtil().setHeight(22)),
              const ExpComponents(), //Components for Experience
            ]),
          ),
        ),
      ),
    );
  }
}
