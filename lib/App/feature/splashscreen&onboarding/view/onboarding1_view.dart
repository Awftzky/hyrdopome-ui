import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lollipopteam/App/feature/splashscreen&onboarding/view/onboarding2_view.dart';

class Onboarding1View extends StatelessWidget {
  const Onboarding1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                // SKIP
              },
              child: Container(
                width: 64,
                height: 34,
                decoration: BoxDecoration(
                  color: Color(0xFFE8F5F2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'Lewati',
                    style: TextStyle(
                      color: Color(0xFF179778),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // IMAGE BELAKANG
          Container(
            width: double.infinity,
            height: 500,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/onboarding1_poster.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: CurvedTopClipper(),
              child: Container(
                width: double.infinity,
                height: 425,
                padding: const EdgeInsets.fromLTRB(20, 104, 20, 0),
                decoration: const BoxDecoration(color: Color(0xFF093731)),
                child: Column(
                  children: [
                    Text(
                      'Tanam Sayur Segar dari\nRumah Tanpa Ribet! 🥕🍅',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Bersama HydropoMe, menanam sayuran untuk\nhidup lebih sehat dan hemat jadi lebih mudah!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 71),
                    // DOTS & BUTTON
                    SizedBox(
                      height: 56,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                // BASIC ROUTE
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Onboarding2View(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: const Color(0x33FFFFFF),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 14,
                                height: 14,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF179778),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                width: 12,
                                height: 12,
                                decoration: const BoxDecoration(
                                  color: Color(0x33FFFFFF),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CurvedTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 0);

    path.lineTo(size.width * 0.01, 0);

    // Kurva melengkung ke bawah di tengah
    path.quadraticBezierTo(size.width / 2, 100, size.width * 0.99, 0);

    path.lineTo(size.width, 0);

    path.lineTo(size.width, size.height);

    path.lineTo(0, size.height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
