import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const CustomButton({Key? key, required this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.blue,
          blurRadius: 5,
          spreadRadius: 0,
        )
      ]),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          text,
          style: GoogleFonts.muli(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(
            width,
            50,
          ),
        ),
      ),
    );
  }
}
