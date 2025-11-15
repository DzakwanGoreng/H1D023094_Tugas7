import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Cek apakah 'isLoggedIn' bernilai true, jika tidak ada, anggap false
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    // Tunggu 2 detik untuk efek loading
    Timer(const Duration(seconds: 2), () {
      if (isLoggedIn) {
        // Jika sudah login, lempar ke home
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        // Jika belum, lempar ke login
        Navigator.pushReplacementNamed(context, '/login');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 100),
            SizedBox(height: 20),
            CircularProgressIndicator(),
            SizedBox(height: 10),
            Text('Memeriksa Autentikasi...'),
          ],
        ),
      ),
    );
  }
}