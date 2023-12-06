import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: const Color.fromARGB(255, 255, 255, 255),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}



      // text,
      // style: const TextStyle(color: Colors.white, fontSize: 15),