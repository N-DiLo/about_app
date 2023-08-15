import 'package:about_app/utils/components/app_components.dart';
import 'package:about_app/utils/constant/app_color.dart';
import 'package:about_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/components/widgets/fab_btns.dart';

class PortFolio extends StatefulWidget {
  const PortFolio({super.key});
  static const routeName = 'portfolio';

  @override
  State<PortFolio> createState() => _PortFolioState();
}

class _PortFolioState extends State<PortFolio> {
  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      mobile: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: AppPalette.primaryColor,
          title: Text(
            'About Me',
            style: GoogleFonts.quicksand(
                fontSize: 17, fontWeight: FontWeight.w700),
          ),
        ),
        floatingActionButton: const FAB(),
        backgroundColor: AppPalette.whiteColor,
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              children: [
                SizedBox(height: 22),
                SocialComponent(), // Social Components
                SizedBox(height: 22),
                AboutText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
