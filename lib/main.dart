import 'package:flutter/material.dart';

// Fungsi utama untuk menjalankan aplikasi
void main() {
  runApp(const MyApp());
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan label debug
      home: Scaffold(
        // AppBar sebagai header aplikasi
        appBar: AppBar(
          title: const Text(
            "I Am Pojok Boys",
            style: TextStyle(
              color: Colors.white, // Warna teks putih
              fontWeight: FontWeight.bold, // Teks tebal
            ),
          ),
          backgroundColor: Color.fromARGB(
            255,
            41,
            10,
            128,
          ), // Warna latar belakang
          centerTitle: true, // Posisi teks di tengah
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ), // Padding kiri & kanan
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Posisi di tengah vertikal
              children: [
                // Menampilkan gambar dari assets
                Image.asset(
                  'assets/murid.jpg',
                  width: 250, // Lebar gambar
                  height: 250, // Tinggi gambar
                  fit: BoxFit.cover, // Menyesuaikan ukuran gambar
                ),
                const SizedBox(height: 20), // Jarak antar elemen
                Container(
                  padding: const EdgeInsets.all(16), // Padding dalam container
                  decoration: BoxDecoration(
                    color: Colors.white, // Warna latar container
                    borderRadius: BorderRadius.circular(10), // Sudut melengkung
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Warna bayangan
                        spreadRadius: 5, // Penyebaran bayangan
                        blurRadius: 7, // Efek blur bayangan
                        offset: const Offset(0, 3), // Posisi bayangan
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                      // Judul teks fakta unik
                      Text(
                        "Fakta Unik Pojok Boys:",
                        style: TextStyle(
                          fontSize: 18, // Ukuran teks
                          fontWeight: FontWeight.bold, // Teks tebal
                          color: Color.fromARGB(255, 41, 10, 128), // Warna teks
                        ),
                      ),
                      SizedBox(height: 10), // Jarak antar teks
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ), // Padding teks
                        child: Column(
                          children: [
                            // Daftar fakta unik
                            Text(
                              "📚 Tugas menumpuk, tapi tetap nongkrong dan ngopi",
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center, // Teks rata tengah
                            ),
                            Text(
                              "☕ Milo hangat adalah sahabat sejati",
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "💻 Buka laptop lalu tutup lagi",
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
