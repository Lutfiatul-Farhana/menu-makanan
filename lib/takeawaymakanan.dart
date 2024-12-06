import 'package:flutter/material.dart';
import 'package:latihan_uas/minuman.dart';

class Takeawaymakanan extends StatelessWidget {
  Takeawaymakanan({super.key});
  final List<Map<String, String>> menuItems = [
    {
      'images': 'assets/images/nasigoreng.png',
      'name': 'Nasi Goreng',
      'price': 'Rp 14.000',
      'oldPrice': 'Rp 18.000',
    },
    {
      'images': 'assets/images/nasiomlet.png',
      'name': 'Nasi Omlet',
      'price': 'Rp 10.000',
      'oldPrice': 'Rp 12.000',
    },
    {
      'images': 'assets/images/telurdadar.png',
      'name': 'Telur Dadar',
      'price': 'Rp 5.000',
      'oldPrice': 'Rp 7.000',
    },
    {
      'images': 'assets/images/ayamgoreng.png',
      'name': 'Ayam Goreng',
      'price': 'Rp 9.000',
      'oldPrice': 'Rp 10.000',
    },
    {
      'images': 'assets/images/ayampecel.png',
      'name': 'Pecel Ayam',
      'price': 'Rp 15.000',
      'oldPrice': 'Rp 20.000',
    },
    {
      'images': 'assets/images/miegorengtelur.png',
      'name': 'Mie Goreng Telur',
      'price': 'Rp 13.000',
      'oldPrice': 'Rp 15.000',
    },
    {
      'images': 'assets/images/nasiputih.png',
      'name': 'Nasi Putih',
      'price': 'Rp 5.000',
      'oldPrice': '7.000',
    },
    {
      'images': 'assets/images/rendang.png',
      'name': 'Rendang',
      'price': 'Rp 28.000',
      'oldPrice': '30.000',
    },
  ];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu',
        style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor:  Colors.white
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/baground.png'), // Ganti dengan gambar latar yang Anda inginkan
            fit: BoxFit.cover, // Menyesuaikan gambar untuk mengisi seluruh layar
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 FilterChip(
                    label: const Text('Makanan'),
                    backgroundColor: const Color.fromARGB(255, 2, 106, 5),
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                    onSelected: (bool value) {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  FilterChip(
                    label: const Text('Minuman'),
                    backgroundColor: const Color.fromARGB(255, 215, 207, 207),
                    labelStyle: const TextStyle(
                      color: Colors.black, // Warna teks
                      fontSize: 17, // Ukuran teks (opsional)
                    ),
                    onSelected: (bool value) {
                      if (value) {
                        // Jika chip dipilih, lakukan navigasi ke Takeawaymakanan
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Minuman(),
                          ),
                        );
                      }
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.fromLTRB(50, 5, 50, 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 0.7,
                ),
                itemCount: menuItems.length,
                itemBuilder: (context, index) {
                  final item = menuItems[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(10),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(item['images']!),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                item['name']!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(height: 2.0),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center, // Horizontal
                                  crossAxisAlignment: CrossAxisAlignment.center, // Vertikal
                                children: [
                                  Text(
                                    item['price']!,
                                    style: const TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  if (item['oldPrice']!.isNotEmpty) ...[
                                    const SizedBox(width: 5.0),
                                    Text(
                                      item['oldPrice']!,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  minimumSize: const Size(double.infinity, 30),
                                  shape:  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7), // Menambahkan borderRadius pada tombol
                                    ),
                                ),
                                child: const Text('Add',
                                style: TextStyle(
                                  color: Colors.black, // Warna teks diubah menjadi hitam
                                ),
                              )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Pesanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
