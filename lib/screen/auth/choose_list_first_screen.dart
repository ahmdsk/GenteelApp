import 'package:flutter/material.dart';
import 'package:genteel_app/model/purpose_list.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseListFirst extends StatefulWidget {
  const ChooseListFirst({super.key});

  @override
  State<ChooseListFirst> createState() => _ChooseListFirstState();
}

class _ChooseListFirstState extends State<ChooseListFirst> {
  List<PurposeList> listingPurpose = [
    PurposeList(purpose: 'Browse a curated shop', isActive: true),
    PurposeList(purpose: 'Get seasonal looks', isActive: false),
    PurposeList(purpose: 'A fun surprise', isActive: false),
    PurposeList(purpose: 'Having an AI help me shop', isActive: true),
    PurposeList(purpose: 'Inspiration', isActive: false),
    PurposeList(purpose: 'Unique pieces', isActive: false),
    PurposeList(purpose: 'Hopeful', isActive: false),
    PurposeList(purpose: 'Transform my style', isActive: true),
    PurposeList(purpose: 'Do my shopping for me', isActive: false),
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
                    'First, what are the reasons you’re excited to try Genteel.',
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
                    children: listingPurpose.map((purpose) {
                      final index = listingPurpose.indexOf(purpose);

                      return TextButton(
                        onPressed: () {
                          setState(() {
                            listingPurpose[index] = listingPurpose[index]
                                .copyWith(isActive: !purpose.isActive);
                          });
                        },
                        style: ButtonStyle(
                          alignment: Alignment.center,
                          side: listingPurpose[index].isActive
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
                          backgroundColor: listingPurpose[index].isActive
                              ? const MaterialStatePropertyAll(
                                  Color(0xFF00C883),
                                )
                              : null,
                        ),
                        child: Text(
                          purpose.purpose,
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: listingPurpose[index].isActive
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
