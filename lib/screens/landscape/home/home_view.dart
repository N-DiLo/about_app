import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/app_color.dart';
import '../../../utils/constant/app_text.dart';
import 'home_view_model.dart';

class HomeViewLandscape extends StatelessWidget {
  HomeViewLandscape({super.key});

  var homeModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    final mWidth = MediaQuery.of(context).size.width;
    final mHeight = MediaQuery.of(context).size.height;
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Column(
          children: [
            SizedBox(
              height: mHeight * 0.04,
            ),
            Container(
              width: mWidth * 0.3,
              height: mHeight * 0.4,
              decoration: BoxDecoration(
                image: const DecorationImage(image: AssetImage(profileImage)),
                border: Border.all(width: 6, color: primaryColor),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: mHeight * 0.04),
            AppText(
              text: homeModel.lName,
              textAlign: TextAlign.center,
              softWrap: true,
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
            Row(
              children: [
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
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Iconsax.call5,
                  color: minTextColor,
                  size: 20,
                ),
                SizedBox(
                  width: mWidth * 0.004,
                ),
                DescText(
                  text: homeModel.phone,
                  color: defaultColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            DescText(
              text: homeModel.description,
              softWrap: true,
              textAlign: TextAlign.center,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                height: mHeight * 0.12,
                width: mWidth * 0.2,
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
                    ]),
              ),
            ),
          ],
        ),
        Column(
          children: [],
        )
      ]),
    ]);
  }
}
