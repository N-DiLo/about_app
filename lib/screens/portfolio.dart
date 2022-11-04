import 'package:about_app/utils/components/app_components.dart';
import 'package:about_app/utils/constant/app_color.dart';
import 'package:about_app/utils/shared/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PortFolio extends StatefulWidget {
  const PortFolio({super.key});

  @override
  State<PortFolio> createState() => _PortFolioState();
}

class _PortFolioState extends State<PortFolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppPalette.primaryColor,
        title: Text(
          'About Me',
          style: GoogleFonts.quicksand(
              fontSize: ScreenUtil().setSp(17), fontWeight: FontWeight.w700),
        ),
      ),
      floatingActionButton: const FAB(),
      backgroundColor: AppPalette.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              SizedBox(height: ScreenUtil().setHeight(22)),
              const SocialComponent(), // Social Components
              SizedBox(height: ScreenUtil().setHeight(22)),
              const AboutText()
            ],
          ),
        ),
      ),
    );
  }
}
