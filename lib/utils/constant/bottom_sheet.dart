import 'package:about_app/utils/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'app_text.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    //final mWidth = MediaQuery.of(context).size.width;
    final mHeight = MediaQuery.of(context).size.height;

    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          SizedBox(
            height: mHeight * 0.03,
          ),
          AppText(
            text: 'CHANGE APP COLOR MODE',
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: fontColor,
          ),
          SizedBox(height: mHeight * 0.05),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              children: [
                Image.asset(
                  darkMode,
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: mHeight * 0.04),
                AppText(
                  text: 'DARK MODE',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
                SizedBox(height: mHeight * 0.04),
                Radio(
                  value: 0,
                  groupValue: 0,
                  onChanged: (value) {},
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  lightMode,
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: mHeight * 0.04),
                AppText(
                  text: 'LIGHT MODE',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
                SizedBox(height: mHeight * 0.04),
                Radio(
                  value: 0,
                  groupValue: 0,
                  onChanged: (value) {},
                ),
              ],
            ),
          ])
        ]));
  }
}
