import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const kPrimaryColor = Color.fromRGBO(112, 24, 200, 1);
  static const kFieldColor = Color.fromRGBO(242, 229, 251, 1);
  static const kTitleFieldTextColor = Color.fromRGBO(59, 67, 82, 1);
  static const kSubTitleColor = Color.fromRGBO(173, 99, 249, 1);
  static const kBlackText = Colors.black;
  static const kOtpBorderColor = Color.fromRGBO(167, 118, 221, 1);
  static final kStitleTextStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.bold, fontSize: 24, color: kPrimaryColor);
  static final kSfieldTextStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500, fontSize: 13, color: kTitleFieldTextColor);
  static final kSButtonTextStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white);
  static final kSubStringStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500, fontSize: 15, color: Colors.black);
  static final kSeconndSubStringStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500, fontSize: 15, color: kSubTitleColor);
}
