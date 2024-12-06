import 'package:flutter/material.dart';
import 'package:latihan_uas/takeawaymakanan.dart';

class Minuman extends StatelessWidget {
  Minuman({super.key});
  final List<Map<String, String>> menuItems = [
    {
      'images': 'assets/images/esteh.png',
      'name': 'Lemon Tea',
      'price': 'Rp 7.000',
      'oldPrice': 'Rp 10.000',
    },
    {
      'images': 'assets/images/airmineral.png',
      'name': 'Air Mineral',
      'price': 'Rp 5.000',
      'oldPrice': 'Rp 8.000',
    },
    {
      'images': 'assets/images/kopi.png',
      'name': 'Ice Cappucino',
      'price': 'Rp 10.000',
      'oldPrice': 'Rp 12.000',
    },
    {
      'images': 'assets/images/teamanis.png',
      'name': 'Es Teh',
      'price': 'Rp 5.000',
      'oldPrice': 'Rp 7.000',
    },
    {
      'images': 'assets/images/nutrisarimangga.png',
      'name': 'Nutrisari Mangga',
      'price': 'Rp 7.000',
      'oldPrice': 'Rp 10.000',
    },
    {
      'images': 'assets/images/cocacola.png',
      'name': 'Coca Cola',
      'price': 'Rp 7.000',
      'oldPrice': 'Rp 10.000',
    },
    {
      'images': 'assets/images/nutrisarijeruk.png',
      'name': 'Nutrisari Jeruk',
      'price': 'Rp 7.000',
      'oldPrice': '10.000',
    },
    {
      'images': 'assets/images/nutrisarianggur.png',
      'name': 'Nutrisari Anggur',
      'price': 'Rp 7.000',
      'oldPrice': '10.000',
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
                    backgroundColor: const Color.fromARGB(255, 215, 207, 207),
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                    onSelected: (bool value) {
                      if (value) {
                        // Jika chip dipilih, lakukan navigasi ke Takeawaymakanan
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Takeawaymakanan(),
                          ),
                        );
                      }
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  FilterChip(
                    label: const Text('Minuman'),
                    backgroundColor: const Color.fromARGB(255, 2, 106, 5),
                    labelStyle: const TextStyle(
                      color: Colors.white, // Warna teks
                      fontSize: 17, // Ukuran teks (opsional)
                    ),
                    onSelected: (bool value) {},
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