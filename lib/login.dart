import 'package:flutter/material.dart';
import 'package:latihan_uas/minuman.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Layer 1: Background
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color.fromARGB(255, 2, 106, 5),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Background image
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/baground.png',
                    fit: BoxFit.cover, // Mengisi seluruh layar
                  ),
                ),
                // Logo di bagian atas tengah
                Positioned(
                    top: 80, // Jarak dari atas layar
                    left: 0,
                    right: 0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Agar elemen hanya mengambil ruang yang diperlukan
                      children: [
                        Image.asset(
                          'assets/images/logo.png', 
                          width: 180, // Ukuran logo
                        ),
                        const SizedBox(height: 50),
                        const Text(
                          'Rasakan Makanan\n Seperti Dirumah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                    Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5, // Mengatur tinggi menjadi 50% dari layar
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Input Username
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Username',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Input Password
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          obscureText: true,
                        ),
                        const SizedBox(height: 20),
                        // Tombol Login
                          ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Minuman(), // Halaman tujuan
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 2, 106, 5), // Warna tombol
                            padding: const EdgeInsets.symmetric(vertical: 15), // Padding dalam tombol
                            minimumSize: const Size(double.infinity, 50), // Lebar penuh
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // Sudut tombol melengkung
                            ),
                          ),
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.white, // Warna teks
                              fontWeight: FontWeight.bold, // Ketebalan teks
                              fontSize: 16, // Ukuran teks
                            ),
                          ),
                        ),
                        const SizedBox(height: 180),
                        // Teks daftar
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Pengguna Baru? '),
                              GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Minuman(), // Halaman tujuan
                                  ),
                                );
                              },
                              child: const Row(
                                mainAxisSize: MainAxisSize.min, // Supaya ukuran Row sesuai konten
                                children: [
                                  Text(
                                    'Daftar ',
                                    style: TextStyle(
                                      color: Colors.green, // Warna teks hijau
                                    ),
                                  ),
                                  Text(
                                    'Disini',
                                    style: TextStyle(
                                      color: Colors.black, // Warna teks hitam
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
