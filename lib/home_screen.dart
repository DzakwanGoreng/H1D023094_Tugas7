import 'package:flutter/material.dart';
import 'package:h1d023094_tugas7/app_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _username = 'Pengguna';

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  Future<void> _loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      // Ambil nama pengguna yang disimpan saat login
      _username = prefs.getString('loggedInUser') ?? 'Pengguna';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      // Panggil widget drawer
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.home, size: 100, color: Colors.indigo),
            const SizedBox(height: 20),
            Text(
              'Selamat Datang, $_username!',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Text('Anda telah berhasil login.'),
          ],
        ),
      ),
    );
  }
}