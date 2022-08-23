import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String labelText;
  final Function() onPressed;
  const PrimaryButton({
    Key? key,
    required this.labelText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        labelText,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
