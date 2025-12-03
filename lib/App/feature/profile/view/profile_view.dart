import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lollipopteam/App/feature/home/view/homepage.dart';
import 'package:lollipopteam/App/feature/widgets/main_nav_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfileView(),
    );
  }
}

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileView();
}

class _ProfileView extends State<ProfileView> {
  int _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    const Color primaryGreen = Color(0xFF093832);

    return Scaffold(
      backgroundColor: primaryGreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 120,
                left: 0,
                right: 0,
                bottom: 0,
                child: ClipPath(
                  clipper: TopCurveClipper(),
                  child: Container(color: Colors.white),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 20),
                  const User(),
                  const SizedBox(height: 80),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                  const Card(),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MainNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 38,
              backgroundImage: AssetImage(
                'assets/images/HomepageAndPersonalization/Memoji Girls 4-12.png',
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Mellafesa',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'mellafesaa@gmail.com',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF179778),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Edit Profil",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text(
                    "Status Pesanan Marketplace",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/box.png',
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(height: 4),
                          Text('Diproses', style: TextStyle()),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/truck.png',
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(height: 4),
                          Text('Dikirim', style: TextStyle()),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/medal.png',
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(height: 4),
                          Text('Selesai', style: TextStyle()),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.12),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.12),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ElevatedButton(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.75,
                            vertical: 11.75,
                          ),
                          child: Image.asset(
                            'assets/images/plant.png',
                            width: 30,
                            height: 25,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFE8F5F2),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Personalisasi',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/images/arrow-left.png'),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.black,
                elevation: 0,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 20),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.12),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ElevatedButton(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.75,
                            vertical: 11.75,
                          ),
                          child: Image.asset(
                            'assets/images/logout.png',
                            width: 30,
                            height: 25,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF0F0),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFC4343),
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/images/arrow-left-red.png'),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.black,
                backgroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 224),
        ],
      ),
    );
  }
}
