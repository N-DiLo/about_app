import 'package:about_app/utils/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: REdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: AppPalette.primaryColor,
          ),
          child: Row(
            children: [
              Icon(Iconsax.setting_4,
                  color: AppPalette.whiteColor, size: ScreenUtil().radius(30)),
              const SizedBox(width: 17),
              Text(
                'App Settings',
                style: GoogleFonts.quicksand(
                    color: AppPalette.whiteColor,
                    fontWeight: FontWeight.w700,
                    fontSize: ScreenUtil().setSp(20)),
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, children: [])),
      ],
    );
  }
}
