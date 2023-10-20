import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class ButtonLoginSignIn {
  String text;
  IconData icon;
  Color color;

  ButtonLoginSignIn({
    required this.text,
    required this.icon,
    required this.color,
  });
}

List<ButtonLoginSignIn> buttonLoginSignInList = [
  ButtonLoginSignIn(
    text: 'Continue with Apple',
    icon: FontAwesome.apple,
    color: Colors.black
  ),
  ButtonLoginSignIn(
    text: 'Continue with Google',
    icon: FontAwesome.google,
    color: Colors.red.shade700
  ),
  ButtonLoginSignIn(
    text: 'Continue with Facebook',
    icon: FontAwesome.facebook,
    color: Colors.blue
  ),
];