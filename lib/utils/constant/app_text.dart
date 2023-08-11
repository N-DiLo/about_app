// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  String text = '';
  Color? color;
  bool? softWrap;
  FontWeight? fontWeight;
  double? fontSize;
  TextAlign? textAlign;

  AppText({
    super.key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.softWrap,
    required this.text,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      softWrap: softWrap,
      textAlign: textAlign,
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
      text,
      style: GoogleFonts.montserrat(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

class DescText extends StatelessWidget {
  String text = '';
  Color? color;
  bool? softWrap;
  FontWeight? fontWeight;
  double? fontSize;
  TextAlign? textAlign;

  DescText({
    super.key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.softWrap,
    required this.text,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      softWrap: softWrap,
      textAlign: textAlign,
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
      text,
      style: GoogleFonts.quicksand(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

class AppBarText extends StatelessWidget {
  String text = '';
  Color? color;

  AppBarText({
    super.key,
    this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
      text,
      style: GoogleFonts.montserrat(
        fontSize: 17,
        fontWeight: FontWeight.w700,
        color: color,
      ),
    );
  }
}
