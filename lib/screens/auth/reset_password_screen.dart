import 'package:flutter/material.dart';
import 'package:flutterfire_auth_bloc_georgeta/components/buttons/primary_button.dart';
import 'package:flutterfire_auth_bloc_georgeta/components/forms/form_input_field_with_icon.dart';
import 'package:flutterfire_auth_bloc_georgeta/helpers/validators.dart';
import 'package:flutterfire_auth_bloc_georgeta/widgets/logo_graphic_header_widget.dart';

class ResetPasswordScreen extends StatelessWidget {
  final TextEditingController resetEmailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Center(
              child: SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const LogoGraphicHeaderWidget(),
                  const SizedBox(
                    height: 48.0,
                  ),
                  FormInputFieldWithIcon(
                    controller: resetEmailController,
                    iconPrefix: Icons.email,
                    labelText: 'Email',
                    validator: Validator().email,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => null,
                    onSaved: (value) => resetEmailController.text = value!,
                  ),
                  const SizedBox(
                    height: 48.0,
                  ),
                  PrimaryButton(
                    labelText: "ENVIAR",
                    onPressed: () async {},
                  ),
                ],
              )),
            ),
          )),
    );
  }
}
