import 'package:dols48/views/fragment/button.dart';
import 'package:dols48/views/fragment/inputForm.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatelessWidget {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double fontSize = screenWidth * 0.04;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel("Email", screenWidth),
        inputForm(
          controller: _emailcontroller,
          name: "email",
          hintText: "youremail@email.com",
          screenWidth: screenWidth,
          fontSize: fontSize,
        ),
        const SizedBox(height: 10),
        _buildLabel("Password", screenWidth),
        inputForm(
            controller: _passwordcontroller,
            name: "password",
            hintText: 'yourpassword',
            screenWidth: screenWidth,
            fontSize: fontSize,
            obscureText: true),
        const SizedBox(
          height: 10,
        ),
        PublicButton(label: 'login', onPressed: () {})
      ],
    );
  }
}

Widget _buildLabel(String text, double screenWidth) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      color: Colors.grey,
      fontSize: screenWidth * 0.03,
    ),
  );
}
