# Tugas 7 - H1D023094

## Penjelasan Struktur File

* **`main.dart`**: Titik masuk aplikasi. Mengatur *theme* dan mendefinisikan semua *named routes* (`/`, `/login`, `/register`, `/home`, `/about`).
* **`splash_screen.dart`**: Layar *loading* awal. Mengecek status login di `shared_preferences` untuk menentukan apakah harus ke halaman Home atau Login.
* **`login_screen.dart`**: Menangani logika login. Membandingkan input pengguna dengan data `username` dan `password` dari `shared_preferences`. Jika berhasil, set `isLoggedIn = true` dan arahkan ke Home.
* **`register_screen.dart`**: Menangani logika registrasi. Menyimpan `username` dan `password` baru ke `shared_preferences` setelah validasi.
* **`home_screen.dart`**: Halaman utama setelah login. Menampilkan `app_drawer.dart` dan pesan selamat datang yang mengambil nama pengguna dari `shared_preferences`.
* **`about_screen.dart`**: Halaman statis "About" yang juga menampilkan `app_drawer.dart`.
* **`app_drawer.dart`**: Widget *Side Menu* yang dapat digunakan kembali. Menampilkan `UserAccountsDrawerHeader` (dengan nama pengguna) dan tautan navigasi ke Home & About, serta tombol Logout.
