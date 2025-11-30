import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'App/feature/home/view/homepage.dart';
import 'App/feature/personalization/view/personalizationPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.plusJakartaSansTextTheme()),
      home: const HomePage(),
    );
  }
}
