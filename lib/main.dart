import 'package:flutter/material.dart';
import 'package:h1d023094_tugas7/splash_screen.dart';
import 'package:h1d023094_tugas7/login_screen.dart';
import 'package:h1d023094_tugas7/register_screen.dart';
import 'package:h1d023094_tugas7/home_screen.dart';
import 'package:h1d023094_tugas7/about_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'H1D023094 - Tugas 7',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // 1. Definisikan semua rute di sini
      initialRoute: '/', // Rute awal adalah Splash Screen
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}