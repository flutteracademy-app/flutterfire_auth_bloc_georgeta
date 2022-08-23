import 'package:flutter/material.dart';
import 'package:flutterfire_auth_bloc_georgeta/components/buttons/label_button.dart';
import 'package:flutterfire_auth_bloc_georgeta/components/buttons/primary_button.dart';
import 'package:flutterfire_auth_bloc_georgeta/components/forms/form_input_field_with_icon.dart';
import 'package:flutterfire_auth_bloc_georgeta/helpers/validators.dart';
import 'package:flutterfire_auth_bloc_georgeta/widgets/logo_graphic_header_widget.dart';

class EmailSignInScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  EmailSignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const LogoGraphicHeaderWidget(),
                  const SizedBox(
                    height: 48,
                  ),
                  FormInputFieldWithIcon(
                    controller: emailController,
                    iconPrefix: Icons.email,
                    labelText: 'Email',
                    validator: Validator().email,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => null,
                    onSaved: (value) => emailController.text = value!,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  FormInputFieldWithIcon(
                    controller: passwordController,
                    iconPrefix: Icons.lock,
                    maxLines: 1,
                    labelText: 'Contraseña',
                    validator: Validator().password,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    onChanged: (value) => null,
                    onSaved: (value) => passwordController.text = value!,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  PrimaryButton(
                    labelText: "INICIAR SESIÓN",
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {}
                    },
                  ),
                  LabelButton(
                    labelText: '¿Aún no tienes cuenta? ¡Registrate!',
                    onPressed: () {},
                  ),
                  LabelButton(
                      labelText: '¿Has olvidado tu contraseña?',
                      onPressed: () {})
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
