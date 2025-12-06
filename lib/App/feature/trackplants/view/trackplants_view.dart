import 'package:flutter/material.dart';
import 'package:lollipopteam/App/feature/trackplants/taskplants_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TrackplantsView(),
    );
  }
}

class TrackplantsView extends StatelessWidget {
  const TrackplantsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header Section
          Stack(
            clipBehavior: Clip.none,
            children: [
              // BACKGROUND HEADER (clipper)
              ClipPath(
                clipper: CurvedDownClipper(),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color(0xFF093731)),
                  padding: EdgeInsets.fromLTRB(
                    20,
                    16,
                    20,
                    80,
                  ), // ditambah space untuk search bar
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsGeometry.only(top: 60),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bagaimana Kabar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Tanamanmu Hari Ini?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 21),
                    ],
                  ),
                ),
              ),
              // POHON
              Positioned(
                bottom: -10, // keluar dari clipper, mengambang
                left: 300,
                right: 20,
                child: Container(
                  width: 100,
                  height: 200,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/trackplants/tree.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              // SEARCH BAR — berada di depan
              Positioned(
                bottom: 20, // keluar dari clipper, mengambang
                left: 20,
                right: 20,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey[400], size: 20),
                      SizedBox(width: 12),
                      Text(
                        'Cari tanaman kamu...',
                        style: TextStyle(color: Colors.grey[400], fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Content Section
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // =============================
                  //       DAFTAR TANAMANMU
                  // =============================
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.20),
                          blurRadius: 12,
                          spreadRadius: 2,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Daftar Tanamanmu',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 12),

                        _buildPlantCard(
                          context,
                          'Selada Hidroponik',
                          'Mudah',
                          'Hari ke-1',
                          Color(0xFF179778),
                          'assets/images/HomepageAndPersonalization/Selada.png',
                        ),

                        Divider(
                          color: Color(0xFFE8ECF4),
                          thickness: 1,
                          height: 24,
                        ),

                        _buildPlantCard(
                          context,
                          'Bayam Hidroponik',
                          'Mudah',
                          'Hari ke-5',
                          Color(0xFF179778),
                          'assets/images/HomepageAndPersonalization/Bayam.png',
                        ),

                        Divider(
                          color: Color(0xFFE8ECF4),
                          thickness: 1,
                          height: 24,
                        ),

                        _buildPlantCard(
                          context,
                          'Cabai Hidroponik',
                          'Sulit',
                          'Hari ke-10',
                          Colors.red,
                          'assets/images/HomepageAndPersonalization/Cabai.png',
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 32),

                  // =============================
                  //             RIWAYAT
                  // =============================
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.20),
                          blurRadius: 12,
                          spreadRadius: 2,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Riwayat',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 12),

                        _buildPlantCard(
                          context,
                          'Selada Hidroponik',
                          'Mudah',
                          'Hari ke-1',
                          Color(0xFF179778),
                          'assets/images/HomepageAndPersonalization/Selada.png',
                        ),

                        Divider(
                          color: Color(0xFFE8ECF4),
                          thickness: 1,
                          height: 24,
                        ),

                        _buildPlantCard(
                          context,
                          'Bayam Hidroponik',
                          'Mudah',
                          'Hari ke-5',
                          Color(0xFF179778),
                          'assets/images/HomepageAndPersonalization/Bayam.png',
                        ),

                        Divider(
                          color: Color(0xFFE8ECF4),
                          thickness: 1,
                          height: 24,
                        ),

                        _buildPlantCard(
                          context,
                          'Cabai Hidroponik',
                          'Sulit',
                          'Hari ke-10',
                          Colors.red,
                          'assets/images/HomepageAndPersonalization/Cabai.png',
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(Icons.home_outlined, 'Beranda', false),
                _buildNavItem(Icons.eco, 'Pantau Tanaman', true),
                _buildNavItem(
                  Icons.shopping_bag_outlined,
                  'Marketplace',
                  false,
                ),
                _buildNavItem(Icons.person_outline, 'Profil', false),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPlantCard(
    BuildContext context,
    String name,
    String difficulty,
    String day,
    Color difficultyColor,
    String imagePath,
  ) {
    return Row(
      children: [
        Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: 12),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  Icon(Icons.circle, size: 10, color: difficultyColor),
                  SizedBox(width: 6),
                  Text(
                    difficulty,
                    style: TextStyle(
                      fontSize: 12,
                      color: difficultyColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Image.asset(
                    'assets/images/trackplants/plant_logo.png',
                    width: 18,
                    height: 18,
                  ),
                  SizedBox(width: 6),
                  Text(
                    day,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),

        Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => TaskplantsView()));
            },
            child: Container(
              width: 64,
              height: 36,
              decoration: BoxDecoration(
                color: Color(0xFF1B9876),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'Pantau',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isActive ? Color(0xFF1B9876) : Colors.grey[400],
          size: 26,
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isActive ? Color(0xFF1B9876) : Colors.grey[400],
            fontSize: 11,
            fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}

class CurvedDownClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Atas lurus
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);

    // Garis kanan turun ke bawah
    path.lineTo(size.width, size.height - 40);

    // Kurva lembut di bagian bawah
    path.quadraticBezierTo(
      size.width / 2, // titik kontrol di tengah
      size.height, // posisi paling bawah untuk membuat lengkungan lembut
      0, // kembali ke pojok kiri
      size.height - 40, // offset biar tidak terlalu tinggi kurvanya
    );

    // Tutup shape
    path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
