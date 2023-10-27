import 'package:flutter/material.dart';
import 'package:genteel_app/screen/homepage_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';

class TopBarHome extends StatefulWidget {
  const TopBarHome({super.key});

  @override
  State<TopBarHome> createState() => _TopBarHomeState();
}

class _TopBarHomeState extends State<TopBarHome> {
  String dropDownValue = genderList.first;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.0,
      child: DropdownButtonFormField(
        value: dropDownValue,
        style: GoogleFonts.lora(
          fontSize: 24.0,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        decoration: const InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
        elevation: 0,
        icon: const Icon(
          Feather.chevron_down,
          size: 18.0,
        ),
        items: genderList.map((gender) {
          return DropdownMenuItem(
            value: gender,
            alignment: Alignment.center,
            child: Text(
              gender.toUpperCase(),
              style: GoogleFonts.lora(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            dropDownValue = value!;
          });
        },
      ),
    );
  }
}
