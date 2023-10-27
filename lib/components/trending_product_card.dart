import 'package:flutter/material.dart';
import 'package:genteel_app/components/favorite_button.dart';
import 'package:genteel_app/model/trending_product_list.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingProductCard extends StatelessWidget {
  final TrendingProductList trendingProduct;

  const TrendingProductCard({super.key, required this.trendingProduct});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Image.asset(
                  trendingProduct.image,
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                  width: 170.0,
                  height: 220.0,
                  repeat: ImageRepeat.noRepeat,
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FavoriteButton(),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                trendingProduct.title,
                style: GoogleFonts.lora(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF343737),
                ),
              ),
              Text(
                "${trendingProduct.stock} products",
                style: GoogleFonts.nunito(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF898C8C),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
