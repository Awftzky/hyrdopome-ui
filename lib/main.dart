import 'package:flutter/material.dart';
import 'package:lollipopteam/App/feature/auth/view/login_view.dart';
import 'package:lollipopteam/App/feature/profile/view/profile_view.dart';
import 'package:lollipopteam/App/feature/splashscreen&onboarding/view/onboarding1_view.dart';
import 'package:lollipopteam/App/feature/home/view/homepage.dart';
import 'package:lollipopteam/App/feature/personalization/view/personalizationPage.dart';

void main() {
  runApp(const MyApp());
}

/*
App dirunning di setiap page , untuk fungsionalitas seperti routing belum diajarkan dan 
digunakan , notes : SCAFFOLD disetiap page & void main disetiap class feature
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "PlusJakartaSans"),
      home: LoginPage(),
    );
  }
}
