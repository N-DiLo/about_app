import 'package:flutter/material.dart';

class ExpModel {
  String appBarText = 'Experience';
  String role = 'Role Fit';
  String fits = '''  1. Working with different cultures or geographies.
  2. Requiring varied/changing competencies over time.
  3. Implementing new practices, conflict management.
  4. Roles which involve a lot of people interaction.
  5. Roles within sales or business development.''';

  String workExp = 'Work Experiences';
  String expRS = 'Risigner Innovations';
  String expRSrole = 'Mobile Developer';

  String expDate = 'Present';

  String expDS = 'DiLo Studios';
  String expDsRole = 'Designs & Coding Instructor';

  String cs = 'Cenad Schools, Rivers - Port Harcourt';
  String chsRole = 'Computer & Data Processing Instructor';
  String chsDate = 'September, 2020 - Till Date';

  void popBack(BuildContext context) {
    Navigator.pop(context);
  }
}
