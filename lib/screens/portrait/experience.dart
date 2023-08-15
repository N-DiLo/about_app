import 'package:about_app/utils/components/app_components.dart';
import 'package:about_app/utils/constant/app_color.dart';
import 'package:about_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import '../../utils/components/widgets/fab_btns.dart';
import '../../utils/constant/app_text.dart';
import '../landscape/background.dart/experience/exp_view_model.dart';

class ExpScreen extends StatelessWidget {
  ExpScreen({super.key});
  static const routeName = 'expereince';

  final expModel = ExpModel();

  @override
  Widget build(BuildContext context) {
    final mWidth = MediaQuery.of(context).size.width;
    final mHeight = MediaQuery.of(context).size.height;

    return ScreenLayout(
      mobile: OrientationLayout(
        portrait: Scaffold(
          floatingActionButton: const FAB(),
          appBar: AppBar(
            elevation: 0,
            leading: GestureDetector(
              onTap: () => expModel.popBack(context),
              child: const Icon(
                Icons.arrow_back_ios_rounded,
              ),
            ),
            title: AppBarText(
              text: expModel.appBarText,
              color: whiteColor,
            ),
            backgroundColor: primaryColor,
          ),
          backgroundColor: AppPalette.whiteColor,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: mWidth * 0.06),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: mHeight * 0.03,
                    ),
                    DescText(
                      text: expModel.role,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: textColor,
                    ),
                    DescText(
                      textAlign: TextAlign.left,
                      softWrap: true,
                      text: expModel.fits,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),

                    SizedBox(height: mHeight * 0.03),
                    ExpComponents(), //Components for Experience
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
