import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_auth_bloc_georgeta/blocs/auth/auth_bloc.dart';
import 'package:flutterfire_auth_bloc_georgeta/routes/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.authStatus == AuthStatus.unathenticated) {
          Navigator.pushNamedAndRemoveUntil(context, Routes.loginRoute,
              (route) {
            return route.settings.name == ModalRoute.of(context)!.settings.name
                ? true
                : false;
          });
        } else if (state.authStatus == AuthStatus.authenticated) {
          Navigator.pushNamed(context, Routes.homeRoute);
        }
      },
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
