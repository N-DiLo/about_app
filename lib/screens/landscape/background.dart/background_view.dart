import 'package:flutter/material.dart';
import '../../../utils/constant/app_color.dart';
import '../../../utils/constant/app_text.dart';
import 'background_view_model.dart';

class BackgroundView extends StatelessWidget {
  BackgroundView({super.key});
  final bckgrndModel = BackgrndModel();

  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: mWidth * 0.03, vertical: mHeight * 0.04),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                elevation: 2,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: mHeight * 0.5,
                  width: mWidth * 0.4,
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
                      SizedBox(height: mHeight * 0.03),
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
                      SizedBox(height: mHeight * 0.03),
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
              ),
              //Skills Card
              Card(
                elevation: 2,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: mHeight * 0.74,
                  width: mWidth * 0.43,
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
                          Column(
                            children: [
                              Image.asset(
                                cdLogo,
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(
                                height: mHeight * 0.001,
                              ),
                              AppText(
                                text: bckgrndModel.corelDraw,
                                color: fontColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: mWidth * 0.03,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                psLogo,
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(
                                height: mHeight * 0.001,
                              ),
                              AppText(
                                text: 'Photoshop',
                                color: fontColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: mWidth * 0.03,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                figmaLogo,
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(
                                height: mHeight * 0.001,
                              ),
                              AppText(
                                text: bckgrndModel.figma,
                                color: fontColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                flutterLogo,
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(
                                height: mHeight * 0.001,
                              ),
                              AppText(
                                text: bckgrndModel.flutter,
                                color: fontColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: mWidth * 0.03,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                illusLogo,
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(
                                height: mHeight * 0.001,
                              ),
                              AppText(
                                text: 'Illustrator',
                                color: fontColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
