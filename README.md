# Tugas 7 - H1D023094

## Penjelasan Struktur File

* **`main.dart`**: Titik masuk aplikasi. Mengatur *theme* dan mendefinisikan semua *named routes* (`/`, `/login`, `/register`, `/home`, `/about`).
* **`splash_screen.dart`**: Layar *loading* awal. Mengecek status login di `shared_preferences` untuk menentukan apakah harus ke halaman Home atau Login.
* **`login_screen.dart`**: Menangani logika login. Membandingkan input pengguna dengan data `username` dan `password` dari `shared_preferences`. Jika berhasil, set `isLoggedIn = true` dan arahkan ke Home.
* **`register_screen.dart`**: Menangani logika registrasi. Menyimpan `username` dan `password` baru ke `shared_preferences` setelah validasi.
* **`home_screen.dart`**: Halaman utama setelah login. Menampilkan `app_drawer.dart` dan pesan selamat datang yang mengambil nama pengguna dari `shared_preferences`.
* **`about_screen.dart`**: Halaman statis "About" yang juga menampilkan `app_drawer.dart`.
* **`app_drawer.dart`**: Widget *Side Menu* yang dapat digunakan kembali. Menampilkan `UserAccountsDrawerHeader` (dengan nama pengguna) dan tautan navigasi ke Home & About, serta tombol Logout.

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/1b68d172-8074-4ef0-bbb9-98be4ed9f78c" />
<img width="1920" height="1080" alt="Screenshot 2025-11-15 235314" src="https://github.com/user-attachments/assets/56a95e93-8015-4d8a-a271-c06650403415" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/62584eab-3fc1-464f-8cd2-d78a1818d955" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/993ec64f-a580-455f-a772-736ce1e9e4c1" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/b5cd3500-e8f1-436e-af1e-85b2c23350ad" />

