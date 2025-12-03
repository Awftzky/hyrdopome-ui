import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lollipopteam/App/feature/auth/view/register_view.dart';

// void main() {
//   runApp(LoginPage());
// }

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  final bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 8),
            Align(
              alignment: Alignment.topLeft,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => AppBar()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width: 1, color: Color(0xFFE8ECF4)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12),
                  ),
                  elevation: 0,
                ),
                child: Icon(Icons.arrow_back, color: Color(0xFF292D32)),
              ),
            ),
            SizedBox(height: 40),
            const Text(
              "Selamat Datang Kembali HydropoMate! 🌿🍃",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            Text(
              "Email",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              style: TextStyle(
                color: Color(0xFF111111),
                fontWeight: FontWeight.w400,
              ),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Color(0xFFE8ECF4)),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Color(0xFFE8ECF4)),
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
            const SizedBox(height: 20),
            Text(
              "Password",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              style: TextStyle(
                color: Color(0xFF111111),
                fontWeight: FontWeight.w400,
              ),
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              obscureText: isObscure,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    isObscure ? Icons.visibility_off : Icons.visibility,
                  ),
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
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF179778),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Masuk",
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
                  text: "Belum memiliki akun? ",
                  style: TextStyle(
                    color: Color(0xFF1E232C),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: "Daftar",
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
                              builder: (context) => RegisterPage(),
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
