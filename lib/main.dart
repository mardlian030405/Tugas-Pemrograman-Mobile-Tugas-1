import 'package:flutter/material.dart';

// Fungsi utama yang menjalankan aplikasi Flutter
void main() {
  runApp(const MyApp());
}

// Widget Stateless yang menjadi root aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Menghilangkan label debug di pojok kanan atas
      title: 'I Am Pojok Boys', // Judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue, // Warna utama aplikasi
        scaffoldBackgroundColor:
            Colors.lightBlue[100], // Warna latar belakang aplikasi
      ),
      home: const HomeScreen(), // Mengatur halaman utama aplikasi
    );
  }
}

// Widget Stateless untuk halaman utama aplikasi
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I Am Pojok Boys'), // Judul pada AppBar
        backgroundColor: const Color.fromARGB(255, 20, 160, 20), // Warna AppBar
        centerTitle: true, // Membuat judul berada di tengah
      ),
      body: SafeArea(
        // Menghindari area yang tertutup oleh status bar atau notch
        child: Center(
          child: SingleChildScrollView(
            // Memungkinkan konten di-scroll jika melebihi layar
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ), // Memberikan padding kiri dan kanan
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment
                        .center, // Menyusun widget di tengah secara vertikal
                children: [
                  Container(
                    padding: const EdgeInsets.all(
                      20.0,
                    ), // Memberikan ruang di dalam container
                    decoration: BoxDecoration(
                      color: Colors.white, // Warna latar belakang container
                      borderRadius: BorderRadius.circular(
                        15,
                      ), // Membuat sudut container melengkung
                      boxShadow: [
                        // Efek bayangan agar tampilan lebih menarik
                        BoxShadow(
                          color: const Color.fromARGB(
                            255,
                            158,
                            158,
                            158,
                          ).withOpacity(
                            0.5,
                          ), // Warna bayangan dengan transparansi
                          spreadRadius: 5, // Menyebarkan bayangan
                          blurRadius: 7, // Membuat bayangan lebih blur
                          offset: const Offset(0, 3), // Posisi bayangan
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/murid.jpg', // Menampilkan gambar dari folder assets
                          height: 150, // Tinggi gambar
                          fit:
                              BoxFit
                                  .cover, // Menyesuaikan ukuran gambar agar tetap proporsional
                        ),
                        const SizedBox(
                          height: 20,
                        ), // Memberikan jarak antar elemen
                        const Text(
                          'Fakta Unik Pojok Boys:', // Judul teks
                          style: TextStyle(
                            fontSize: 20, // Ukuran teks
                            fontWeight:
                                FontWeight.bold, // Membuat teks lebih tebal
                            color: Color.fromARGB(
                              255,
                              20,
                              160,
                              20,
                            ), // Warna teks
                          ),
                        ),
                        const SizedBox(height: 10), // Jarak antara teks
                        const Text(
                          '📚 Tugas menumpuk, tapi tetap ngopi dan nongkrong.\n'
                          '☕ Milo hangat adalah sahabat sejati.\n'
                          '💻 Laptop lebih lama menemani daripada pacar.', // Konten teks fakta unik
                          textAlign:
                              TextAlign.center, // Membuat teks rata tengah
                          style: TextStyle(fontSize: 16), // Ukuran teks
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
