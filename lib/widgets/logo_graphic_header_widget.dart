import 'package:flutter/material.dart';

class LogoGraphicHeaderWidget extends StatelessWidget {
  const LogoGraphicHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'App Header Logo Graphic',
      child: CircleAvatar(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.transparent,
        radius: 60.0,
        child: ClipOval(
          child: Image.asset(
            "assets/images/default.png",
            fit: BoxFit.cover,
            width: 120,
            height: 120,
          ),
        ),
      ),
    );
  }
}
