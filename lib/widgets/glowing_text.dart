import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlowingText extends StatelessWidget {
  final List<Shadow> shadows;
  final String text;
  final double fontSize;
  const GlowingText({
    Key? key,
    required this.shadows,
    required this.text,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.muli(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        shadows: shadows,
      ),
      // style: TextStyle(
      // color: Colors.white,
      // fontWeight: FontWeight.bold,
      // fontSize: fontSize,
      // shadows: shadows,
      // ),
    );
  }
}
