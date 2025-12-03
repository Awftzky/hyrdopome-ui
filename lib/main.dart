import 'package:flutter/material.dart';
import 'package:lollipopteam/App/feature/profile/view/profile_view.dart';

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
      home: ProfileView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
