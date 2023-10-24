import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldVerifyCode extends StatelessWidget {
  const TextFieldVerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64.0,
      height: 64.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: Colors.white.withOpacity(0.3),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      alignment: Alignment.center,
      child: TextField(
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          counterText: '',
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        cursorColor: Colors.white,
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
