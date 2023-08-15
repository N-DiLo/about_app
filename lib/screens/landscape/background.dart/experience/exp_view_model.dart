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

  String cs = 'Cenad Schools, Rivers State, P.H';
  String csRole = 'Computer & Data Processing Instructor';
  String csDate = 'September, 2020 - Till Date';

  String exxon = 'ExxonMobil Nigeria';
  String exRole = 'EMIT (Customer Support) - Intern';
  String exDate = 'August, 2018';

  String eni = 'Nigeria Agip Oil Company';
  String eniRole = 'Training Dept. Trainee';
  String eniDate = 'December, 2015';

  void popBack(BuildContext context) {
    Navigator.pop(context);
  }
}
