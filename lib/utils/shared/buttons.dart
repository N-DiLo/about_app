// ignore_for_file: must_be_immutable
import 'package:about_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/app_color.dart';

class AppBtn extends StatelessWidget {
  Color? color;
  Widget? leading;
  void Function() onTap;
  String title;
  String? subtitle;
  TextStyle? style;

  AppBtn(
      {super.key,
      this.leading,
      this.color,
      required this.onTap,
      this.style,
      this.subtitle,
      required this.title});

  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 300,
      ),
      width: double.infinity,
      height: mHeight * 0.09,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: minTextColor, offset: Offset(0.5, 0.4))
        ],
        color: buttonColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        onTap: onTap,
        minLeadingWidth: 10,
        titleAlignment: ListTileTitleAlignment.center,
        title: Text(title),
        leading: leading,
        subtitle: Text(subtitle ?? ''),
        tileColor: color,
        titleTextStyle: GoogleFonts.montserrat(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: fontColor,
        ),
        subtitleTextStyle: GoogleFonts.montserrat(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: fontColor,
        ),
      ),
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
    return Responsive(
      builder: (context, screenSizeInfo) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 2,
          padding: const EdgeInsets.all(13),
          backgroundColor: primary!,
          minimumSize: const Size(57, 52),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: onPressed,
        child: fill,
      ),
    );
  }
}
