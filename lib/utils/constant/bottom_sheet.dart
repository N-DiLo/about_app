import 'package:about_app/utils/constant/app_color.dart';
import 'package:about_app/utils/responsive.dart';
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
    return Responsive(
      builder: (context, screenSizeInfo) => Column(
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
                    color: AppPalette.whiteColor,
                    size: ScreenUtil().radius(30)),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: ScreenUtil().setHeight(20)),
                    Text(
                      'CHANGE APP COLOR MODE',
                      style: GoogleFonts.montserrat(
                          fontSize: ScreenUtil().setSp(15),
                          fontWeight: FontWeight.w700,
                          color: AppPalette.fontColor),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(38)),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Column(
                        children: [
                          Image.asset('assets/dark-mode.png',
                              width: ScreenUtil().setWidth(99),
                              height: ScreenUtil().setHeight(116)),
                          SizedBox(height: ScreenUtil().setHeight(18)),
                          Text(
                            'DARK MODE',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: ScreenUtil().setSp(14)),
                          )
                        ],
                      ),
                      SizedBox(width: ScreenUtil().setWidth(62)),
                      Column(
                        children: [
                          Image.asset('assets/light-mode.png',
                              width: ScreenUtil().setWidth(99),
                              height: ScreenUtil().setHeight(116)),
                          SizedBox(height: ScreenUtil().setHeight(18)),
                          Text(
                            'LIGHT MODE',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: ScreenUtil().setSp(14)),
                          )
                        ],
                      ),
                    ])
                  ])),
        ],
      ),
    );
  }
}
