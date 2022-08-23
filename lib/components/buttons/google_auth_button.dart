import 'package:flutter/material.dart';
import 'package:flutterfire_auth_bloc_georgeta/components/buttons/sign_in_button.dart';

class GoogleSignInButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const GoogleSignInButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignInButton(
      buttonColor: Colors.white,
      leadingBackground: Colors.white,
      onPressed: onPressed,
      borderRaius: 10.0,
      leading: Image.asset("assets/images/auth_google_logo.png"),
      text: text,
      textColor: Colors.black,
    );
  }
}
