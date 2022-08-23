import 'package:flutter/material.dart';
import 'package:flutterfire_auth_bloc_georgeta/components/buttons/sign_in_button.dart';

class EmailSignUpButton extends StatelessWidget {
  final Function() onPressed;
  const EmailSignUpButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignInButton(
      buttonColor: Colors.white,
      leadingBackground: Colors.white,
      onPressed: onPressed,
      borderRaius: 10.0,
      leading: const Icon(
        Icons.email,
        color: Colors.green,
        size: 24,
      ),
      text: 'Registrase con Email',
      textColor: Colors.black,
    );
  }
}
