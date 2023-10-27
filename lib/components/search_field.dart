import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      color: const Color(0xFFF7F7F7),
      child: Row(
        children: [
          IconButton(icon: const Icon(Feather.search), onPressed: () {}),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Let’s shop for anything..',
                hintStyle: GoogleFonts.nunito(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Feather.camera),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Feather.mic),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
