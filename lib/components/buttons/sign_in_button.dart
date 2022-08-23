import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final Function() onPressed;
  final Color buttonColor;
  final Color leadingBackground;
  final double borderRaius;
  final Widget leading;
  final String text;
  final Color textColor;
  const SignInButton(
      {Key? key,
      required this.onPressed,
      required this.buttonColor,
      required this.leadingBackground,
      required this.borderRaius,
      required this.leading,
      required this.text,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          elevation: 2,
        ),
        onPressed: onPressed,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              height: 38.0,
              width: 38.0,
              decoration: (BoxDecoration(
                color: leadingBackground,
                borderRadius: BorderRadius.circular(borderRaius),
              )),
              child: Center(
                  child: SizedBox(
                height: 24,
                width: 24,
                child: leading,
              )),
            ),
          ),
          Expanded(
              child: Container(
            alignment: Alignment.center,
            child: Text(text,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: textColor,
                )),
          ))
        ]),
      ),
    );
  }
}
