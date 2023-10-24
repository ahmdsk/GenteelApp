import 'package:flutter/material.dart';
import 'package:genteel_app/components/button_auth.dart';
import 'package:genteel_app/model/button_login_signin.dart';
import 'package:genteel_app/screen/auth/signin_screen.dart';
import 'package:genteel_app/screen/auth/signup_form_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/sign_in.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF000000).withOpacity(0.0),
                    const Color(0xFF000000).withOpacity(1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top *
                  MediaQuery.of(context).size.height *
                  0.01,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome To Genteel',
                          style: GoogleFonts.lora(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'We’re glad you chose us to shop today',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 36.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: buttonLoginSignInList
                          .map(
                            (button) => ButtonAuth(
                              buttonLoginSignIn: button,
                              onPressed: () {},
                            ),
                          )
                          .toList(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Expanded(child: Divider()),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'OR',
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Expanded(child: Divider()),
                        ],
                      ),
                    ),
                    ButtonAuth(
                      buttonLoginSignIn: ButtonLoginSignIn(
                        text: 'Continue with Email',
                        icon: Icons.email_outlined,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpForm()));
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(
                          left: 4.0,
                        ),
                      ),
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF78F208),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
