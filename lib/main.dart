import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_auth_bloc_georgeta/blocs/auth/auth_bloc.dart';
import 'package:flutterfire_auth_bloc_georgeta/firebase_options.dart';
import 'package:flutterfire_auth_bloc_georgeta/routes/routes.dart';
import 'package:flutterfire_auth_bloc_georgeta/screens/auth/login_screen.dart';
import 'package:flutterfire_auth_bloc_georgeta/screens/home_screen.dart';
import 'package:flutterfire_auth_bloc_georgeta/screens/splash_screen.dart';
import 'package:flutterfire_auth_bloc_georgeta/services/firebase_auth_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<FirebaseAuthServices>(
            create: (context) => FirebaseAuthServices())
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(
              firebaseAuthServices: context.read<FirebaseAuthServices>(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Material App',
          home: const SplashScreen(),
          routes: {
            Routes.homeRoute: (context) => const HomeScreen(),
            Routes.loginRoute: (context) => const LoginScreen()
          },
        ),
      ),
    );
  }
}
