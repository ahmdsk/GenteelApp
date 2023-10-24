import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:genteel_app/screen/homepage_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class RedirectPage extends StatelessWidget {
  const RedirectPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomepageScreen(),
        ),
      );
    });

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/redirecting_to_homepage.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                child: SpinKitFadingCircle(
                  itemBuilder: (context, index) {
                    return const DecoratedBox(
                      decoration: BoxDecoration(color: Colors.white),
                    );
                  },
                ),
              ),
              Text(
                'Great, we’re picking your style.',
                style: GoogleFonts.lora(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
