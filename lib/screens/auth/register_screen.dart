import 'package:flutter/material.dart';
import 'package:flutterfire_auth_bloc_georgeta/components/buttons/email_sign_up_button.dart';
import 'package:flutterfire_auth_bloc_georgeta/components/buttons/google_auth_button.dart';
import 'package:flutterfire_auth_bloc_georgeta/components/buttons/label_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                Container(
                  child: EmailSignUpButton(
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                GoogleSignInButton(
                    text: 'Registrarse con Google', onPressed: () {}),
                const SizedBox(
                  height: 24,
                ),
                LabelButton(
                  labelText: '¿Ya tienes cuenta? ¡Inicia sesión!',
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
