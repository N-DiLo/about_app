import 'package:about_app/utils/responsive.dart';
import 'package:about_app/utils/shared/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:url_launcher/link.dart';
import '../../screens/landscape/background.dart/background_view_model.dart';
import '../../screens/landscape/home/home_view_model.dart';
import '../constant/app_color.dart';
import '../constant/app_text.dart';

//Components used for the Home screen
class HomeComponents extends StatelessWidget {
  HomeComponents({super.key});

  final homeModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    final mWidth = MediaQuery.of(context).size.width;
    final mHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: mHeight * 0.03),
        Container(
          width: mWidth,
          height: mHeight * 0.16,
          decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage(profileImage)),
            border: Border.all(width: 5, color: primaryColor),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(height: mHeight * 0.02),
        AppText(
          text: homeModel.name,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
        DescText(
          text: homeModel.description,
          softWrap: true,
          textAlign: TextAlign.center,
          fontSize: 12,
          fontWeight: FontWeight.w300,
        ),
        SizedBox(height: mHeight * 0.016),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Iconsax.calendar5,
                  color: minTextColor,
                  size: 20,
                ),
                SizedBox(
                  width: mWidth * 0.004,
                ),
                DescText(
                  text: homeModel.birth,
                  color: defaultColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(width: mWidth * 0.04),
                const Icon(
                  Iconsax.messages_15,
                  color: minTextColor,
                  size: 20,
                ),
                SizedBox(
                  width: mWidth * 0.004,
                ),
                DescText(
                  text: homeModel.mail,
                  color: defaultColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            SizedBox(height: mHeight * 0.008),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Iconsax.location5,
                  color: minTextColor,
                  size: 20,
                ),
                SizedBox(
                  width: mWidth * 0.004,
                ),
                DescText(
                  text: homeModel.location,
                  color: defaultColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(width: mWidth * 0.05),
                const Icon(
                  Iconsax.call5,
                  color: minTextColor,
                  size: 20,
                ),
                SizedBox(
                  width: mWidth * 0.004,
                ),
                DescText(
                  softWrap: true,
                  text: homeModel.phone,
                  color: defaultColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            SizedBox(height: mHeight * 0.016),
            const Divider(color: fontColor, thickness: 1.5),
            SizedBox(height: mHeight * 0.012),
          ],
        ),
        Card(
          child: Container(
            padding: const EdgeInsets.all(10),
            height: mHeight * 0.12,
            width: mWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DescText(
                    text: homeModel.objective,
                    color: fontColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
                DescText(
                    text: homeModel.obj,
                    color: fontColor,
                    softWrap: true,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ],
            ),
          ),
        ),
        SizedBox(height: mHeight * 0.01),
      ],
    );
  }
}

//Buttons used for the Home screen
class HomeButtons extends StatelessWidget {
  HomeButtons({super.key});
  final homeModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: mHeight * 0.02),
        AppBtn(
          onTap: () {
            homeModel.gotoEducation(context);
          },
          leading: const FaIcon(
            FontAwesomeIcons.graduationCap,
            size: 20,
            color: defaultColor,
          ),
          title: homeModel.education,
          subtitle: homeModel.subEdu,
        ),
        SizedBox(height: mHeight * 0.02),
        AppBtn(
          onTap: () {
            homeModel.gotoExperience(context);
          },
          leading: const FaIcon(
            FontAwesomeIcons.starHalfStroke,
            size: 20,
            color: defaultColor,
          ),
          title: homeModel.experience,
          subtitle: homeModel.subExp,
        ),
        SizedBox(height: mHeight * 0.02),
        AppBtn(
          onTap: () {
            homeModel.gotoPortfolio(context);
          },
          leading: const FaIcon(
            FontAwesomeIcons.handHoldingHeart,
            size: 20,
            color: defaultColor,
          ),
          title: homeModel.about,
          subtitle: homeModel.subAb,
        ),
      ],
    );
  }
}

// Social Media handles
class SocialComponent extends StatelessWidget {
  const SocialComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: ScreenUtil().setHeight(52),
          width: ScreenUtil().setWidth(57),
          child: Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://twitter.com/nwanedilobu'),
              builder: (context, followLink) => SocialButton(
                  primary: AppPalette.buttonColor,
                  fill: FaIcon(
                    FontAwesomeIcons.twitter,
                    color: AppPalette.twColor,
                    size: ScreenUtil().radius(30),
                  ),
                  onPressed: () => followLink)),
        ),
        SizedBox(
          height: ScreenUtil().setHeight(52),
          width: ScreenUtil().setWidth(57),
          child: Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://linkedin.com/nwanedilobu'),
              builder: (context, followLink) => SocialButton(
                  primary: AppPalette.buttonColor,
                  fill: FaIcon(
                    FontAwesomeIcons.facebook,
                    color: AppPalette.fbColor,
                    size: ScreenUtil().radius(30),
                  ),
                  onPressed: () => followLink)),
        ),
        SizedBox(
          height: ScreenUtil().setHeight(52),
          width: ScreenUtil().setWidth(57),
          child: Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://facebook.com/nwanedilobu'),
              builder: (context, followLink) => SocialButton(
                  primary: AppPalette.buttonColor,
                  fill: FaIcon(
                    FontAwesomeIcons.linkedinIn,
                    color: AppPalette.lnColor,
                    size: ScreenUtil().radius(30),
                  ),
                  onPressed: () => followLink)),
        ),
        SizedBox(
          height: ScreenUtil().setHeight(52),
          width: ScreenUtil().setWidth(57),
          child: Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://github.com/N-DiLo'),
              builder: (context, followLink) => SocialButton(
                  primary: AppPalette.buttonColor,
                  fill: FaIcon(
                    FontAwesomeIcons.github,
                    color: AppPalette.defaultColor,
                    size: ScreenUtil().radius(30),
                  ),
                  onPressed: () => followLink)),
        ),
      ],
    );
  }
}

//About page Components
class AboutText extends StatelessWidget {
  const AboutText({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      builder: (context, screenSizeInfo) => RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
            text: 'Thinking\n',
            style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w700,
                fontSize: ScreenUtil().setSp(14),
                color: AppPalette.fontColor),
            children: <TextSpan>[
              TextSpan(
                  text: 'Analysing | Exploring\n',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(13),
                      fontWeight: FontWeight.w500,
                      color: AppPalette.primaryColor)),
              TextSpan(
                  text:
                      'Nwanedilobu prefers to take decisions based on feelings or instinct rather than rely on evidence. As a result, Nwanedilobu tends to pay attention to different views and opinions rather than spending their time analysing data.\n\n',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(12),
                      fontWeight: FontWeight.w400,
                      color: AppPalette.fontColor)),
              TextSpan(
                  text: 'Executing\n',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(14),
                      fontWeight: FontWeight.w700,
                      color: AppPalette.fontColor)),
              TextSpan(
                  text: 'Quality | Result Driven\n',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(13),
                      fontWeight: FontWeight.w500,
                      color: AppPalette.primaryColor)),
              TextSpan(
                  text:
                      'Nwanedilobu tends to be systematic, methodical and organised and delivers within deadlines. Nwanedilobu is reliable and disciplined and driven to achieve their goals.\n\n',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(12),
                      fontWeight: FontWeight.w400,
                      color: AppPalette.fontColor)),
              TextSpan(
                  text: 'Connecting\n',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(14),
                      fontWeight: FontWeight.w700,
                      color: AppPalette.fontColor)),
              TextSpan(
                  text: 'Networking | Collaborating\n',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(13),
                      fontWeight: FontWeight.w500,
                      color: AppPalette.primaryColor)),
              TextSpan(
                  text:
                      'Nwanedilobu is someone who feels at ease when connecting with new people and generally has a well-developed network.\n\nNwanedilobu displays empathy towards colleagues and finds it important to listen to their points of view. Nwanedilobu is likely to involve others in key decisions and plans. Nwanedilobu gives credit where it is due and delegates easily when necessary.\n\n',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(12),
                      fontWeight: FontWeight.w400,
                      color: AppPalette.fontColor)),
              TextSpan(
                  text: 'Progressing\n',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(14),
                      fontWeight: FontWeight.w700,
                      color: AppPalette.fontColor)),
              TextSpan(
                  text: 'Leadership | Resillience | Adaptability\n',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(13),
                      fontWeight: FontWeight.w500,
                      color: AppPalette.primaryColor)),
              TextSpan(
                  text:
                      'Nwanedilobu is comfortable with working in rapidly changing environments. Nwanedilobu views failures as learning opportunities and an intrinsic part of the route to success. Nwanedilobu brings energy to groups without wanting to necessarily take charge.\n\n',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(12),
                      fontWeight: FontWeight.w400,
                      color: AppPalette.fontColor)),
            ]),
      ),
    );
  }
}

//Experience Components
class ExpComponents extends StatelessWidget {
  const ExpComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      builder: (context, screenSizeInfo) => Column(
        children: [
          Card(
            child: Container(
              padding: REdgeInsets.all(10),
              height: ScreenUtil().setHeight(110),
              width: ScreenUtil().setWidth(370),
              child: Column(children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Work Experience - 1',
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
                      rsLogo,
                      width: ScreenUtil().setWidth(45),
                      height: ScreenUtil().setHeight(44),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(7)),
                    Column(
                      children: [
                        RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                              text: 'Risigner Innovations\n',
                              style: GoogleFonts.quicksand(
                                  fontSize: ScreenUtil().setSp(11),
                                  fontWeight: FontWeight.w700,
                                  color: AppPalette.textColor),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Mobile Developer\n',
                                  style: GoogleFonts.quicksand(
                                      fontSize: ScreenUtil().setSp(9),
                                      fontWeight: FontWeight.w600),
                                ),
                                TextSpan(
                                  text: 'Present',
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
              ]),
            ),
          ),
          Card(
            child: Container(
              padding: REdgeInsets.all(10),
              height: ScreenUtil().setHeight(110),
              width: ScreenUtil().setWidth(370),
              child: Column(children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Work Experience - 2',
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
                      diloLogo,
                      width: ScreenUtil().setWidth(45),
                      height: ScreenUtil().setHeight(44),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(7)),
                    Column(
                      children: [
                        RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                              text: 'DiLo Dev. Studios\n',
                              style: GoogleFonts.quicksand(
                                  fontSize: ScreenUtil().setSp(11),
                                  fontWeight: FontWeight.w700,
                                  color: AppPalette.textColor),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Designs & Coding Instructor\n',
                                  style: GoogleFonts.quicksand(
                                      fontSize: ScreenUtil().setSp(9),
                                      fontWeight: FontWeight.w600),
                                ),
                                TextSpan(
                                  text: 'Present',
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
              ]),
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(22),
          ),
          Card(
            child: Container(
              padding: REdgeInsets.all(10),
              height: ScreenUtil().setHeight(174),
              width: ScreenUtil().setWidth(370),
              child: Column(children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Work Experience - 3',
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
                      chsLogo,
                      width: ScreenUtil().setWidth(45),
                      height: ScreenUtil().setHeight(44),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(7)),
                    Column(
                      children: [
                        RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                              text: 'Cenad Schools, Rivers - Port Harcourt\n',
                              style: GoogleFonts.quicksand(
                                  fontSize: ScreenUtil().setSp(11),
                                  fontWeight: FontWeight.w700,
                                  color: AppPalette.textColor),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Computer Instructor\n',
                                  style: GoogleFonts.quicksand(
                                      fontSize: ScreenUtil().setSp(9),
                                      fontWeight: FontWeight.w600),
                                ),
                                TextSpan(
                                  text: 'September, 2020 - Till Date',
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
                      cedsLogo,
                      width: ScreenUtil().setWidth(45),
                      height: ScreenUtil().setHeight(44),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(7)),
                    Column(
                      children: [
                        RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                              text: 'Cenad Schools, Rivers - Port Harcourt\n',
                              style: GoogleFonts.quicksand(
                                  fontSize: ScreenUtil().setSp(11),
                                  fontWeight: FontWeight.w700,
                                  color: AppPalette.textColor),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Coding Instructor\n',
                                  style: GoogleFonts.quicksand(
                                      fontSize: ScreenUtil().setSp(9),
                                      fontWeight: FontWeight.w600),
                                ),
                                TextSpan(
                                  text: 'September, 2020 - Till Date',
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
        ],
      ),
    );
  }
}

//Academical background & Certificates
class Acadmics extends StatelessWidget {
  Acadmics({super.key});

  final bckgrndModel = BackgrndModel();

  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;

    return Card(
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: mHeight * 0.22,
        width: mWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DescText(
              text: bckgrndModel.education,
              color: fontColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            const Divider(
              color: fontColor,
              thickness: 1,
            ),
            Row(
              children: [
                Image.asset(
                  kenpolyLogo,
                  width: 45,
                  height: 45,
                ),
                SizedBox(width: mWidth * 0.03),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DescText(
                      softWrap: true,
                      text: bckgrndModel.school,
                      color: textColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    DescText(
                      text: bckgrndModel.degree,
                      color: textColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: mHeight * 0.02,
            ),
            Row(
              children: [
                Image.asset(
                  kenpolyLogo,
                  width: 45,
                  height: 45,
                ),
                SizedBox(width: mWidth * 0.03),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DescText(
                      text: bckgrndModel.schl,
                      color: textColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    DescText(
                      text: bckgrndModel.deg,
                      color: textColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                    DescText(
                      text: bckgrndModel.degDate,
                      color: textColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//Skills acquired
class Skills extends StatelessWidget {
  Skills({super.key});

  final bckgrndModel = BackgrndModel();

  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
    return Card(
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: mHeight * 0.48,
        width: mWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DescText(
              text: bckgrndModel.skills,
              color: fontColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            const Divider(
              color: fontColor,
              thickness: 1,
            ),
            Row(
              children: [
                Image.asset(
                  cdLogo,
                  width: 45,
                  height: 45,
                ),
                SizedBox(
                  width: mWidth * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: bckgrndModel.corelDraw,
                      color: fontColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: mWidth * 0.4,
                      height: mHeight * 0.025,
                      child: LinearPercentIndicator(
                        barRadius: const Radius.circular(10),
                        lineHeight: 8,
                        animation: true,
                        percent: 90 / 100,
                        padding: const EdgeInsets.all(0),
                        animationDuration: 800,
                        progressColor: primaryColor,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: mHeight * 0.025),
            Row(
              children: [
                Image.asset(
                  flutterLogo,
                  width: 45,
                  height: 45,
                ),
                SizedBox(
                  width: mWidth * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: bckgrndModel.flutter,
                      color: fontColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: mWidth * 0.4,
                      height: mHeight * 0.025,
                      child: LinearPercentIndicator(
                        barRadius: const Radius.circular(10),
                        lineHeight: 8,
                        animation: true,
                        percent: 70 / 100,
                        padding: const EdgeInsets.all(0),
                        animationDuration: 800,
                        progressColor: primaryColor,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: mHeight * 0.025),
            Row(
              children: [
                Image.asset(
                  figmaLogo,
                  width: 45,
                  height: 45,
                ),
                SizedBox(
                  width: mWidth * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: bckgrndModel.figma,
                      color: fontColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: mWidth * 0.4,
                      height: mHeight * 0.025,
                      child: LinearPercentIndicator(
                        barRadius: const Radius.circular(10),
                        lineHeight: 8,
                        animation: true,
                        percent: 45 / 100,
                        padding: const EdgeInsets.all(0),
                        animationDuration: 800,
                        progressColor: primaryColor,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: mHeight * 0.025),
            Row(
              children: [
                Image.asset(
                  psLogo,
                  width: 45,
                  height: 45,
                ),
                SizedBox(
                  width: mWidth * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: bckgrndModel.photoshop,
                      color: fontColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: mWidth * 0.4,
                      height: mHeight * 0.025,
                      child: LinearPercentIndicator(
                        barRadius: const Radius.circular(10),
                        lineHeight: 8,
                        animation: true,
                        percent: 80 / 100,
                        padding: const EdgeInsets.all(0),
                        animationDuration: 800,
                        progressColor: primaryColor,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: mHeight * 0.025),
            Row(
              children: [
                Image.asset(
                  illusLogo,
                  width: 45,
                  height: 45,
                ),
                SizedBox(
                  width: mWidth * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: bckgrndModel.illustrator,
                      color: fontColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: mWidth * 0.4,
                      height: mHeight * 0.025,
                      child: LinearPercentIndicator(
                        barRadius: const Radius.circular(10),
                        lineHeight: 8,
                        animation: true,
                        percent: 35 / 100,
                        padding: const EdgeInsets.all(0),
                        animationDuration: 800,
                        progressColor: primaryColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
