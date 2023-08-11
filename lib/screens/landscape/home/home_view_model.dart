import 'package:about_app/screens/portrait/background.dart';
import 'package:about_app/screens/portrait/experience.dart';
import 'package:about_app/screens/portrait/portfolio.dart';
import 'package:flutter/cupertino.dart';

class HomeViewModel {
  String name = 'Egbekwu Nwanedilobu';
  String lName = 'Egbekwu\nNwanedilobu';
  String description =
      '''Graduate Computer Science, Mobile Developer, Graphics & UI Designer, IT Support Specialist & Computer Instructor''';

  String lDesc =
      '''Graduate Computer Science, Mobile Developer,\nGraphics & UI Designer, IT Support Specialist & Computer Instructor''';

  String birth = 'January 28';
  String phone = '+234 (0) 816 8322 467';
  String location = 'Rivers, Port Harcourt';
  String mail = 'egbekwunwanedilobu@gmail.com';

  String obj =
      'To utilize my technical skills and provide a professional service to customers by applying and honing my knowledge and working in a challenging and motivating working environment.';

  String objective = 'Objectives';
  String subEdu = 'Find out more on qualifications accquired';
  String education = 'Educational Background';

  void gotoEducation(BuildContext context) {
    Navigator.pushNamed(context, Background.routeName);
  }

  //Experience
  String experience = 'Experience';
  String subExp = 'More on work done and previous roles handled';

  void gotoExperience(BuildContext context) {
    Navigator.pushNamed(context, ExpScreen.routeName);
  }

  //Portfolio
  String about = 'About Me';
  String subAb = 'Connect via different social handles';

  void gotoPortfolio(BuildContext context) {
    Navigator.pushNamed(context, PortFolio.routeName);
  }
}
