import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lollipopteam/App/feature/auth/view/login_view.dart';

// void main() {
//   runApp(RegisterPage());
// }

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leadingWidth: 65,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                ),
                child: Center(
                  child: Icon(Icons.arrow_back, size: 22, color: Colors.black),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Daftar Akun dan Mulai Bertani Hidroponik! 🌿",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Text(
              "Nama Lengkap",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              style: TextStyle(
                color: Color(0xFF111111),
                fontWeight: FontWeight.w400,
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xFFE8ECF4)),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xFFE8ECF4)),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: "Masukkan Nama Lengkap",
                hintStyle: TextStyle(
                  color: Color(0xFF8391A1),
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Color(0xFFF7F8F9),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Email",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              style: TextStyle(
                color: Color(0xFF111111),
                fontWeight: FontWeight.w400,
              ),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xFFE8ECF4)),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xFFE8ECF4)),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: "Masukkan Email",
                hintStyle: TextStyle(
                  color: Color(0xFF8391A1),
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Color(0xFFF7F8F9),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Buat Password",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              style: TextStyle(
                color: Color(0xFF111111),
                fontWeight: FontWeight.w400,
              ),
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xFFE8ECF4)),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xFFE8ECF4)),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: "Masukkan Password",
                hintStyle: TextStyle(
                  color: Color(0xFF8391A1),
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Color(0xFFF7F8F9),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Konfirmasi Password",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              style: TextStyle(
                color: Color(0xFF111111),
                fontWeight: FontWeight.w400,
              ),
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xFFE8ECF4)),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xFFE8ECF4)),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: "Masukkan Password",
                hintStyle: TextStyle(
                  color: Color(0xFF8391A1),
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Color(0xFFF7F8F9),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF179778),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
                elevation: 0,
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Daftar Akun",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Sudah memiliki akun? ",
                  style: TextStyle(
                    color: Color(0xFF1E232C),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: "Masuk",
                      style: TextStyle(
                        color: Color(0xFF179778),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
