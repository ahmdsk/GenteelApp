import 'package:flutter/material.dart';
import 'package:genteel_app/components/search_field.dart';
import 'package:genteel_app/components/trending_product_card.dart';
import 'package:genteel_app/model/trending_product_list.dart';
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
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 18.0,
        ),
        children: [
          const SearchField(),
          Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              bottom: 8.0
            ),
            child: Text(
              'TRENDING NOW',
              style: GoogleFonts.lora(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            childAspectRatio: (1 / 2),
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            crossAxisSpacing: 12.0,
            children: trendingList.map((trending) {
              return TrendingProductCard(
                trendingProduct: trending,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
