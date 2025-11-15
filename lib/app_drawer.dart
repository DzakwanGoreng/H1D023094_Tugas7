import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  String _username = 'Pengguna';

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  // Ambil username dari local storage untuk ditampilkan di header
  Future<void> _loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = prefs.getString('loggedInUser') ?? 'Pengguna';
    });
  }

  // Fungsi untuk logout
  Future<void> _logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Hapus semua data dari shared preferences
    await prefs.clear(); 
    
    // Navigasi ke login dan hapus semua rute sebelumnya (agar tidak bisa back)
    Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Header yang lebih bagus
          UserAccountsDrawerHeader(
            accountName: Text(_username),
            accountEmail: const Text('SigmaBoy'),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: FlutterLogo(),
            ),
            decoration: const BoxDecoration(
              color: Colors.indigo,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Gunakan rute bernama
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () {
              // Gunakan rute bernama
              Navigator.pushReplacementNamed(context, '/about');
            },
          ),
          const Divider(),
          // Tombol Logout
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: _logout,
          ),
        ],
      ),
    );
  }
}