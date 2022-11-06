import 'package:about_app/screens/background.dart';
import 'package:about_app/screens/experience.dart';
import 'package:about_app/screens/portfolio.dart';
import 'package:about_app/utils/shared/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/link.dart';
import '../constant/app_color.dart';

//Components used for the Home screen
class HomeComponents extends StatelessWidget {
  const HomeComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: ScreenUtil().setHeight(10)),
        AspectRatio(
          aspectRatio: 2.8,
          child: Container(
            width: ScreenUtil().setWidth(50),
            height: ScreenUtil().setHeight(50),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/profile.jpg')),
                border: Border.all(
                    width: ScreenUtil().setWidth(6),
                    color: AppPalette.primaryColor),
                shape: BoxShape.circle,
                color: AppPalette.whiteColor),
          ),
        ),
        SizedBox(height: ScreenUtil().setHeight(16)),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: 'Egbekwu Nwanedilobu \n',
              style: GoogleFonts.montserrat(
                  fontSize: ScreenUtil().setSp(20),
                  fontWeight: FontWeight.w700,
                  color: AppPalette.textColor),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Graduate Computer Science, Mobile Developer,\n UI/UX Designer, Graphics Designer & Computer Instructor',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(12),
                      fontWeight: FontWeight.w300),
                )
              ]),
        ),
        SizedBox(height: ScreenUtil().setHeight(16)),
        Column(
          children: [
            Row(
              children: [
                Icon(
                  Iconsax.calendar5,
                  color: AppPalette.textColor1,
                  size: ScreenUtil().radius(20),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(4),
                ),
                Text(
                  'January 28',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(10),
                      color: AppPalette.defaultColor,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(width: ScreenUtil().setWidth(35)),
                Icon(
                  Iconsax.messages_15,
                  color: AppPalette.textColor1,
                  size: ScreenUtil().radius(20),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(4),
                ),
                Text(
                  'egbekwunwanedilobu@gmail.com',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(10),
                      color: AppPalette.defaultColor,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            Row(
              children: [
                Icon(
                  Iconsax.location5,
                  color: AppPalette.textColor1,
                  size: ScreenUtil().radius(20),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(4),
                ),
                Text(
                  'Rivers, Port Harcourt',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(10),
                      color: AppPalette.defaultColor,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(width: ScreenUtil().setWidth(42)),
                Icon(
                  Iconsax.call5,
                  color: AppPalette.textColor1,
                  size: ScreenUtil().radius(20),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(4),
                ),
                Text(
                  '+234 (0) 816 832 2467',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(10),
                      color: AppPalette.defaultColor,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(16)),
            const Divider(color: AppPalette.fontColor),
            SizedBox(height: ScreenUtil().setHeight(10)),
          ],
        ),
      ],
    );
  }
}

//Buttons used for the Home screen
class HomeButtons extends StatelessWidget {
  const HomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Container(
            padding: REdgeInsets.all(10),
            height: ScreenUtil().setHeight(100),
            width: ScreenUtil().setWidth(370),
            child: Column(children: [
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    text: 'Objectives\n',
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w700,
                        fontSize: ScreenUtil().setSp(13),
                        color: AppPalette.fontColor),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              'To utilize my technical skills and provide a professional service to customers by applying and honing my knowledge and working in a challenging and motivating working environment. ',
                          style: GoogleFonts.quicksand(
                              fontSize: ScreenUtil().setSp(12),
                              fontWeight: FontWeight.w400,
                              color: AppPalette.fontColor)),
                    ]),
              )
            ]),
          ),
        ),
        SizedBox(height: ScreenUtil().setHeight(20)),
        AppButton(
            primary: AppPalette.buttonColor,
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => const Background())),
            fill: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.graduationCap,
                  size: ScreenUtil().radius(25),
                  color: AppPalette.defaultColor,
                ),
                SizedBox(width: ScreenUtil().setWidth(12)),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      text: 'Educational Background\n',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700,
                          fontSize: ScreenUtil().setSp(14),
                          color: AppPalette.fontColor),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Find out more on qualifications accquired',
                            style: GoogleFonts.montserrat(
                                fontSize: ScreenUtil().setSp(10),
                                fontWeight: FontWeight.w400,
                                color: AppPalette.fontColor)),
                      ]),
                ),
              ],
            )),
        SizedBox(height: ScreenUtil().setHeight(20)),
        AppButton(
            primary: AppPalette.buttonColor,
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => const ExpScreen())),
            fill: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.starHalfStroke,
                  size: ScreenUtil().radius(25),
                  color: AppPalette.defaultColor,
                ),
                SizedBox(width: ScreenUtil().setWidth(12)),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      text: 'Experience\n',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700,
                          fontSize: ScreenUtil().setSp(14),
                          color: AppPalette.fontColor),
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                'More on work done and previous roles handled',
                            style: GoogleFonts.montserrat(
                                fontSize: ScreenUtil().setSp(10),
                                fontWeight: FontWeight.w400,
                                color: AppPalette.fontColor)),
                      ]),
                ),
              ],
            )),
        SizedBox(height: ScreenUtil().setHeight(20)),
        AppButton(
            primary: AppPalette.buttonColor,
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => const PortFolio())),
            fill: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.handHoldingHeart,
                  size: ScreenUtil().radius(25),
                  color: AppPalette.defaultColor,
                ),
                SizedBox(width: ScreenUtil().setWidth(12)),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      text: 'About Me\n',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700,
                          fontSize: ScreenUtil().setSp(14),
                          color: AppPalette.fontColor),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Connect via different social handles',
                            style: GoogleFonts.montserrat(
                                fontSize: ScreenUtil().setSp(10),
                                fontWeight: FontWeight.w400,
                                color: AppPalette.fontColor)),
                      ]),
                ),
              ],
            )),
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
    return RichText(
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
    );
  }
}

//Experience Components
class ExpComponents extends StatelessWidget {
  const ExpComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    'assets/rs-logo.png',
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
                    'assets/dilo-logo.png',
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
                    'assets/chs-logo.png',
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
                    'assets/ceds-logo.png',
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
    );
  }
}
