import 'package:flutter/material.dart';
import 'package:genteel_app/model/clothes_category.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseListSecond extends StatefulWidget {
  const ChooseListSecond({super.key});

  @override
  State<ChooseListSecond> createState() => _ChooseListSecondState();
}

class _ChooseListSecondState extends State<ChooseListSecond> {
  List<ClothesCategory> listingClothes = [
    ClothesCategory(clothes: 'Cleavage', isActive: false),
    ClothesCategory(clothes: 'Arms', isActive: true),
    ClothesCategory(clothes: 'Back', isActive: false),
    ClothesCategory(clothes: 'Legs', isActive: true),
    ClothesCategory(clothes: 'Midsection', isActive: false),
    ClothesCategory(clothes: 'Rear', isActive: false),
    ClothesCategory(clothes: 'Shoulders', isActive: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 24.0,
                  ),
                  child: Text(
                    'What do you show off when wearing clothes.',
                    style: GoogleFonts.lora(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    spacing: 12.0,
                    children: listingClothes.map((clothes) {
                      final index = listingClothes.indexOf(clothes);

                      return TextButton(
                        onPressed: () {
                          setState(() {
                            listingClothes[index] = listingClothes[index]
                                .copyWith(isActive: !clothes.isActive);
                          });
                        },
                        style: ButtonStyle(
                          alignment: Alignment.center,
                          side: listingClothes[index].isActive
                              ? null
                              : const MaterialStatePropertyAll(
                                  BorderSide(
                                    color: Color(0xFF626565),
                                  ),
                                ),
                          padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                          ),
                          backgroundColor: listingClothes[index].isActive
                              ? const MaterialStatePropertyAll(
                                  Color(0xFF00C883),
                                )
                              : null,
                        ),
                        child: Text(
                          clothes.clothes,
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: listingClothes[index].isActive
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  alignment: Alignment.center,
                  elevation: const MaterialStatePropertyAll(0.0),
                  shape: const MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                  ),
                  fixedSize: MaterialStatePropertyAll(
                    Size(MediaQuery.of(context).size.width * 0.9, 48.0),
                  ),
                  backgroundColor: const MaterialStatePropertyAll(
                    Color(0xFF78F208),
                  ),
                ),
                child: Text(
                  'Next',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
