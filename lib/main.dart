import 'package:flutter/material.dart';
import 'package:home_page/Home.dart';
import 'package:home_page/Register.dart';
import './Routes/routes.dart';
import './Login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Routes.register: ((context) => const Register()),
        Routes.home: ((context) => const HomePage()),
        Routes.login: ((context) => const LoginPage()),
      },
    );
  }
}
