import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Navigasi Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, fontFamily: 'Roboto'),
      initialRoute: '/home',
      // Semua rute didaftarkan disini, biar Navigator.pushNamed() bisa
      // manggil pakai nama string, gak perlu bikin instance widget manual
      routes: {
        '/home': (context) => const HomePage(),
        '/tujuan': (context) => const TujuanPage(),
      },
    );
  }
}

// ================== HALAMAN UTAMA ==================
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3D8BFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Ini Halaman Home',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Berisi aplikasi memiliki beberapa layar untuk '
                    'menampilkan informasi yang berbeda. Contohnya, '
                    'ada layar produk, dan ketika pengguna memilih '
                    'produk, akan muncul layar dengan detail produk '
                    'tersebut.',
                style: TextStyle(color: Colors.white, fontSize: 13, height: 1.5),
              ),
              const SizedBox(height: 30),
              Center(
                child: Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Icon(Icons.home, size: 90, color: Color(0xFF3D8BFF)),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Pertama, kita perlu mendaftar dua halaman atau "routes" '
                    'yang ingin kita tampilkan. Selanjutnya, kita gunakan '
                    'perintah Navigator.push() untuk membuka halaman pertama '
                    'ke dua. Terakhir, kita bisa kembali dari halaman kedua '
                    'ke halaman pertama menggunakan Navigator.pop().',
                style: TextStyle(color: Colors.white, fontSize: 13, height: 1.5),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF3D8BFF),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  // Inti tugasnya ada disini: pindah ke halaman tujuan
                  onPressed: () {
                    Navigator.pushNamed(context, '/tujuan');
                  },
                  child: const Text('Ke Halaman Tujuan >'),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

// ================== HALAMAN TUJUAN ==================
class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF6B3D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Ini Halaman Tujuan',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Untuk berpindah ke halaman baru, gunakan metode '
                    'Navigator.push(). Metode push() akan menambahkan rute '
                    'baru ke dalam tumpukan navigasi yang dikelola oleh '
                    'Navigator, biasa dipasangkan dengan MaterialPageRoute '
                    'yang punya animasi transisi sesuai platform.',
                style: TextStyle(color: Colors.white, fontSize: 13, height: 1.5),
              ),
              const SizedBox(height: 30),
              Center(
                child: Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Icon(Icons.landscape, size: 90, color: Color(0xFFFF6B3D)),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Untuk menutup halaman kedua dan kembali ke halaman '
                    'pertama, gunakan metode pop(). Metode pop() untuk '
                    'menghapus route saat ini dari tumpukan route yang '
                    'dikelola oleh Navigator.',
                style: TextStyle(color: Colors.white, fontSize: 13, height: 1.5),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFFFF6B3D),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('< Kembali ke home'),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}