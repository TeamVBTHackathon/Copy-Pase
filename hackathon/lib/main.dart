import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/features/authenticate/auth_screen.dart';
import 'package:hackathon/features/authenticate/login/login_screen.dart';
import 'package:hackathon/features/authenticate/register/register_screen.dart';
import 'package:hackathon/features/landing/landing_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: const AuthStateScreen(),
      routes: {
        LoginScreen.routeName: (ctx) => const LoginScreen(),
        RegisterScreen.routeName: (ctx) => const RegisterScreen(),
        LandingScreen.routeName: (ctx) => const LandingScreen(),
      },
    );
  }
}
