import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoe/utils/colors.dart';

class GlowingTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const GlowingTextField(
      {Key? key, required this.controller, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 5,
            spreadRadius: 2,
          )
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            fillColor: bgColor,
            filled: true,
            hintText: hintText,
            hintStyle: GoogleFonts.muli()),
      ),
    );
  }
}
