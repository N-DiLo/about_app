import 'package:flutter/material.dart';

class BackgrndModel {
  String appBarTitle = 'Background';
  String education = 'Education';

  //RivPoly :)
  String schl = 'Rivers State Polytechnic, Bori';
  String deg = 'ND Computer Science';
  String degDate = '2014';

  //KenPoly ;)
  String school = 'Kenule Beeson Saro-Wiwa\nPolytechnic, Bori';
  String degree = 'HND Computer Science - 2017';

  //Skills
  String skills = 'Skills';
  String corelDraw = 'Corel Draw';
  String figma = 'Figma';
  String photoshop = 'Adobe Photoshop';
  String illustrator = 'Adobe Illustrator';
  String flutter = 'Flutter';

  void popBack(BuildContext context) {
    Navigator.pop(context);
  }
}
