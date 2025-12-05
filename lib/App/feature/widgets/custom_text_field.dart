import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    // required this.controller,
    required this.textInputType,
    required this.textInputAction,
    required this.hint,
    required this.label,
    this.isObscure = false,
    this.hasSuffix = false,
    super.key,
  });

  // final TextEditingController controller;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String hint;
  final String label;
  final bool isObscure;
  final bool hasSuffix;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 8),
        TextField(
          style: TextStyle(
            color: Color(0xFF111111),
            fontWeight: FontWeight.w400,
          ),
          keyboardType: textInputType,
          textInputAction: textInputAction,
          obscureText: isObscure,
          decoration: InputDecoration(
            suffixIcon: hasSuffix
                ? IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      isObscure
                          ? 'assets/images/eye-slash.png'
                          : 'assets/images/eye.png',
                    ),
                  )
                : null,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xFF179778)),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xFF179778)),
              borderRadius: BorderRadius.circular(12),
            ),
            hintText: isObscure ? "••••••••" : hint,
            hintStyle: TextStyle(
              color: Color(0xFF111111),
              fontWeight: FontWeight.w400,
            ),
            filled: true,
            fillColor: Color(0xFFF7F8F9),
          ),
        ),
      ],
    );
  }
}
