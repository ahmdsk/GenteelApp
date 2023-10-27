import 'package:flutter/material.dart';
import 'package:genteel_app/components/trending_product_card.dart';
import 'package:genteel_app/model/trending_product_list.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingProductWidget extends StatelessWidget {
  const TrendingProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
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
    );
  }
}
