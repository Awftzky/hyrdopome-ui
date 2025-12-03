import 'package:flutter/material.dart';
import 'package:lollipopteam/App/feature/widgets/custom_text_field.dart';

void main() {
  runApp(const EditProfile());
}

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Edit Profil",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        leadingWidth: 80,

        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300, width: 1),
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back, size: 24, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0xFFE8F5F2),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        'assets/images/HomepageAndPersonalization/Memoji Girls 4-12.png',
                      ),
                      backgroundColor: Color(0xFFE8F5F2),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFF179778),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/images/edit.png'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      children: [
                        CustomTextField(
                          textInputType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          hint: "Mellafesa",
                          label: "Nama Lengkap",
                        ),
                        SizedBox(height: 20),
                        CustomTextField(
                          textInputType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          hint: "mellafesaa@gmail.com ",
                          label: "Email",
                        ),
                        SizedBox(height: 20),
                        CustomTextField(
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
                          hint: "Password",
                          label: "Password",
                          hasSuffix: true,
                        ),
                        SizedBox(height: 20),
                        CustomTextField(
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
                          hint: "Ubah Password",
                          label: "Ubah Password",
                          hasSuffix: true,
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Simpan",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF179778),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
