import 'package:flutter/material.dart';
import 'package:flutterfire_auth_bloc_georgeta/components/buttons/email_sign_in_button.dart';
import 'package:flutterfire_auth_bloc_georgeta/components/buttons/google_auth_button.dart';
import 'package:flutterfire_auth_bloc_georgeta/components/buttons/label_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: SizedBox(
              height: 200,
              child: Image.asset("assets/images/flutteracademy-logo.png"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                EmailSignInButton(
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 24,
                ),
                GoogleSignInButton(
                    text: 'Iniciar sesión con Google', onPressed: () {}),
                const SizedBox(
                  height: 24,
                ),
                LabelButton(
                    labelText: '¿Aún no tienes cuenta? ¡Registrate!',
                    onPressed: () {}),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
