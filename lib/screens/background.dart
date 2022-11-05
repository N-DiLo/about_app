import 'package:about_app/utils/constant/app_color.dart';
import 'package:about_app/utils/shared/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FAB(),
      appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Background',
            style: GoogleFonts.quicksand(
                fontSize: ScreenUtil().setSp(17), fontWeight: FontWeight.w700),
          ),
          backgroundColor: AppPalette.primaryColor),
      backgroundColor: AppPalette.whiteColor,
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 28),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: ScreenUtil().setHeight(22)),
              Card(
                child: Container(
                  padding: REdgeInsets.all(10),
                  height: ScreenUtil().setHeight(174),
                  width: ScreenUtil().setWidth(370),
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Education',
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w700,
                            fontSize: ScreenUtil().setSp(13),
                            color: AppPalette.fontColor),
                      ),
                    ),
                    const Divider(color: AppPalette.fontColor),
                    Row(
                      children: [
                        Image.asset(
                          'assets/kenpoly-logo.png',
                          width: ScreenUtil().setWidth(45),
                          height: ScreenUtil().setHeight(44),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(7)),
                        Column(
                          children: [
                            RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                  text:
                                      'Kenule Beeson Saro-Wiwa Polytechnic, Bori\n',
                                  style: GoogleFonts.quicksand(
                                      fontSize: ScreenUtil().setSp(11),
                                      fontWeight: FontWeight.w700,
                                      color: AppPalette.textColor),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'HND Computer Science\n',
                                      style: GoogleFonts.quicksand(
                                          fontSize: ScreenUtil().setSp(9),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    TextSpan(
                                      text: '2016 - 2017\n',
                                      style: GoogleFonts.quicksand(
                                          fontSize: ScreenUtil().setSp(9),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ]),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(18),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/kenpoly-logo.png',
                          width: ScreenUtil().setWidth(45),
                          height: ScreenUtil().setHeight(44),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(7)),
                        Column(
                          children: [
                            RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                  text: 'Rivers State Polytechnic, Bori\n',
                                  style: GoogleFonts.quicksand(
                                      fontSize: ScreenUtil().setSp(11),
                                      fontWeight: FontWeight.w700,
                                      color: AppPalette.textColor),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'ND Computer Science\n',
                                      style: GoogleFonts.quicksand(
                                          fontSize: ScreenUtil().setSp(9),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    TextSpan(
                                      text: '2012 - 2014\n',
                                      style: GoogleFonts.quicksand(
                                          fontSize: ScreenUtil().setSp(9),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ]),
                            ),
                          ],
                        )
                      ],
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(22),
              ),
              Card(
                child: Container(
                  padding: REdgeInsets.all(10),
                  height: ScreenUtil().setHeight(358),
                  width: ScreenUtil().setWidth(370),
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Skills',
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w700,
                            fontSize: ScreenUtil().setSp(13),
                            color: AppPalette.fontColor),
                      ),
                    ),
                    const Divider(color: AppPalette.fontColor),
                    Row(
                      children: [
                        Image.asset(
                          'assets/cd-logo.png',
                          width: ScreenUtil().setWidth(45),
                          height: ScreenUtil().setHeight(44),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(7)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Corel Draw',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: ScreenUtil().setSp(11),
                                  color: AppPalette.fontColor),
                            ),
                            SizedBox(height: ScreenUtil().setHeight(8)),
                            SizedBox(
                              width: ScreenUtil().setWidth(156),
                              child: LinearPercentIndicator(
                                barRadius: const Radius.circular(10),
                                lineHeight: 8,
                                animation: true,
                                percent: 90 / 100,
                                padding: REdgeInsets.all(0),
                                animationDuration: 800,
                                progressColor: AppPalette.primaryColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: ScreenUtil().setHeight(18)),
                    Row(
                      children: [
                        Image.asset(
                          'assets/flutter-logo.png',
                          width: ScreenUtil().setWidth(45),
                          height: ScreenUtil().setHeight(44),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(7)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Flutter',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: ScreenUtil().setSp(11),
                                  color: AppPalette.fontColor),
                            ),
                            SizedBox(height: ScreenUtil().setHeight(8)),
                            SizedBox(
                              width: ScreenUtil().setWidth(156),
                              child: LinearPercentIndicator(
                                barRadius: const Radius.circular(10),
                                lineHeight: 8,
                                animation: true,
                                percent: 70 / 100,
                                padding: REdgeInsets.all(0),
                                animationDuration: 800,
                                progressColor: AppPalette.primaryColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: ScreenUtil().setHeight(18)),
                    Row(
                      children: [
                        Image.asset(
                          'assets/figma-logo.png',
                          width: ScreenUtil().setWidth(45),
                          height: ScreenUtil().setHeight(44),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(7)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Figma',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: ScreenUtil().setSp(11),
                                  color: AppPalette.fontColor),
                            ),
                            SizedBox(height: ScreenUtil().setHeight(8)),
                            SizedBox(
                              width: ScreenUtil().setWidth(156),
                              child: LinearPercentIndicator(
                                barRadius: const Radius.circular(10),
                                lineHeight: 8,
                                animation: true,
                                percent: 40 / 100,
                                padding: REdgeInsets.all(0),
                                animationDuration: 800,
                                progressColor: AppPalette.primaryColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: ScreenUtil().setHeight(18)),
                    Row(
                      children: [
                        Image.asset(
                          'assets/ps-logo.png',
                          width: ScreenUtil().setWidth(45),
                          height: ScreenUtil().setHeight(44),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(7)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Adobe Photoshop',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: ScreenUtil().setSp(11),
                                  color: AppPalette.fontColor),
                            ),
                            SizedBox(height: ScreenUtil().setHeight(8)),
                            SizedBox(
                              width: ScreenUtil().setWidth(156),
                              child: LinearPercentIndicator(
                                barRadius: const Radius.circular(10),
                                lineHeight: 8,
                                animation: true,
                                percent: 80 / 100,
                                padding: REdgeInsets.all(0),
                                animationDuration: 800,
                                progressColor: AppPalette.primaryColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: ScreenUtil().setHeight(18)),
                    Row(
                      children: [
                        Image.asset(
                          'assets/illus-logo.png',
                          width: ScreenUtil().setWidth(45),
                          height: ScreenUtil().setHeight(44),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(7)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Adobe Illustrator',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: ScreenUtil().setSp(11),
                                  color: AppPalette.fontColor),
                            ),
                            SizedBox(height: ScreenUtil().setHeight(8)),
                            SizedBox(
                              width: ScreenUtil().setWidth(156),
                              child: LinearPercentIndicator(
                                barRadius: const Radius.circular(10),
                                lineHeight: 8,
                                animation: true,
                                percent: 30 / 100,
                                padding: REdgeInsets.all(0),
                                animationDuration: 800,
                                progressColor: AppPalette.primaryColor,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
