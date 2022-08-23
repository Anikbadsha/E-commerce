import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myStyle(
  double? size, [
  Color? clr,
  FontWeight? fw,
  double? ws,
  double? ls,
  double? height,
]) {
  return GoogleFonts.nunito(
    fontSize: size,
    fontWeight: fw,
    color: clr,
    wordSpacing: ws,
    letterSpacing: ls,
    height: height,
  );
}
