import 'package:dols48/views/login/loginForm.dart';
import 'package:dols48/views/register/registPage.dart';
import 'package:dols48/views/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dols48 account',
          style: GoogleFonts.poppins(
              color: mainRed,
              fontWeight: FontWeight.w600,
              fontSize: screenWidth * 0.05),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: <Widget>[
            Center(
              child: Text(
                "Dols48 Login",
                style: GoogleFonts.poppins(
                    color: blackColor,
                    fontSize: screenWidth * 0.08,
                    fontWeight: FontWeight.w900),
              ),
            ),
            LoginForm(),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegistPage(),
                    ),
                    (_) => false,
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: "Don't have account ? ",
                    style: GoogleFonts.poppins(
                        color: blackColor, fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                        text: "Register",
                        style: GoogleFonts.poppins(
                            color: mainRed, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
