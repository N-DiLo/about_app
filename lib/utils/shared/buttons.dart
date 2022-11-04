import 'package:about_app/utils/constant/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/link.dart';

import '../constant/app_color.dart';

class AppButton extends StatelessWidget {
  final Color? primary;
  final Color? surfaceColor;
  final Widget? fill;

  final Function() onPressed;

  const AppButton(
      {Key? key,
      required this.primary,
      required this.fill,
      this.surfaceColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        padding: REdgeInsets.all(13),
        backgroundColor: primary!,
        foregroundColor: surfaceColor,
        textStyle: GoogleFonts.inter(
            fontWeight: FontWeight.w700, fontSize: ScreenUtil().setSp(20)),
        minimumSize:
            Size(ScreenUtil().setWidth(335), ScreenUtil().setHeight(76)),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ScreenUtil().radius(15))),
      ),
      onPressed: onPressed,
      child: fill,
    );
  }
}

class SocialButton extends StatelessWidget {
  final Color? primary;
  final Widget? fill;

  final Function() onPressed;

  const SocialButton(
      {Key? key,
      required this.primary,
      required this.fill,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        padding: REdgeInsets.all(13),
        backgroundColor: primary!,
        minimumSize:
            Size(ScreenUtil().setWidth(57), ScreenUtil().setHeight(52)),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ScreenUtil().radius(10))),
      ),
      onPressed: onPressed,
      child: fill,
    );
  }
}

class FAB extends StatelessWidget {
  const FAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: AppPalette.primaryColor,
        onPressed: (() => showModalBottomSheet(
            context: context, builder: (_) => const AppSettings())),
        child: Icon(
          Iconsax.setting_2,
          size: ScreenUtil().radius(30),
        ));
  }
}
