import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../constant/app_color.dart';
import '../../constant/app_text.dart';
import '../../constant/bottom_sheet.dart';

class FAB extends StatelessWidget {
  const FAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: (() => showModalBottomSheet(
              elevation: 3.0,
              context: context,
              builder: (_) => Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: const AppSettings(),
              ),
            )),
        child: const Icon(
          Iconsax.setting_2,
          size: 30,
        ));
  }
}

class LandscapeFAB extends StatelessWidget {
  const LandscapeFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: primaryColor,
      onPressed: (() => showModalBottomSheet(
          context: context, builder: (_) => const AppSettings())),
      label: AppText(
        text: 'Settings',
        fontSize: 15,
        color: whiteColor,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
