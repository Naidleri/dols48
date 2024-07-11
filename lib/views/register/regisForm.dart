import 'package:dols48/views/fragment/button.dart';
import 'package:dols48/views/fragment/inputForm.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationForm extends StatelessWidget {
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double fontSize = screenWidth * 0.04;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel("Username", screenWidth),
        inputForm(
          controller: _nicknameController,
          name: "Username",
          hintText: "yourusername",
          screenWidth: screenWidth,
          fontSize: fontSize,
        ),
        const SizedBox(height: 10),
        _buildLabel("Email", screenWidth),
        inputForm(
          controller: _emailController,
          name: "Email",
          hintText: "youremail@email.com",
          screenWidth: screenWidth,
          fontSize: fontSize,
        ),
        const SizedBox(height: 10),
        _buildLabel("Password", screenWidth),
        inputForm(
          controller: _passwordController,
          name: "Password",
          hintText: "password",
          screenWidth: screenWidth,
          fontSize: fontSize,
          obscureText: true,
        ),
        const SizedBox(height: 20),
        PublicButton(label: 'register', onPressed: () {}),
      ],
    );
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
}
