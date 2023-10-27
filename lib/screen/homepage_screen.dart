import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';

const List<String> genderList = ['Women', 'Men', 'Children'];

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  String dropDownValue = genderList.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: 120.0,
          child: DropdownButtonFormField(
            value: dropDownValue,
            style: GoogleFonts.lora(
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
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
              debugPrint("valuenya: $value");
              setState(() {
                dropDownValue = value!;
              });
            },
          ),
        ),
        actions: [
          IconButton(icon: const Icon(Feather.heart), onPressed: () {}),
          IconButton(icon: const Icon(Feather.bell), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 16.0,
            ),
            color: const Color(0xFFF7F7F7),
            child: Row(children: [
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
            ]),
          )
        ],
      ),
    );
  }
}