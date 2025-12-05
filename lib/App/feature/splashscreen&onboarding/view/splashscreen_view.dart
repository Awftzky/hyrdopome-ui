import 'package:flutter/material.dart';

void main() {
  runApp(const Splashscreen());
}

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PlusJakartaSans'),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/logo.png', width: 98, height: 104),
              const SizedBox(height: 20),
              const Text(
                "HydropoMe",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF179778),
                ),
              ),
              const SizedBox(height: 3),
              const Text(
                "Hijaukan bumi dengan inovasi",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Color(0xFF179778),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
