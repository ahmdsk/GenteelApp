import 'package:flutter/material.dart';
import 'package:genteel_app/model/button_login_signin.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonAuth extends StatelessWidget {
  final ButtonLoginSignIn buttonLoginSignIn;
  final Function onPressed;

  const ButtonAuth({
    super.key,
    required this.buttonLoginSignIn,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8.0,
        left: 16.0,
        right: 16.0,
      ),
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.all(16.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Icon(
                buttonLoginSignIn.icon,
                color: buttonLoginSignIn.color,
              ),
            ),
            const SizedBox(
              width: 48.0,
            ),
            Expanded(
              flex: 8,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  buttonLoginSignIn.text,
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
