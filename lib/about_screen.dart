import 'package:flutter/material.dart';
import 'package:h1d023094_tugas7/app_drawer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      // Panggil widget drawer
      drawer: const AppDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.info_outline, size: 100, color: Colors.indigo),
              const SizedBox(height: 20),
              Text(
                'Tentang Aplikasi',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 10),
              const Text(
                'Ini adalah aplikasi demo Flutter untuk Tugas 7 (H1D023094). Aplikasi ini mengimplementasikan registrasi, login, local storage, dan navigasi drawer.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}