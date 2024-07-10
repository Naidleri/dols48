import 'package:dols48/views/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';

Widget inputForm({
  required TextEditingController controller,
  required String name,
  String? hintText,
  double? screenWidth,
  double? fontSize,
  bool obscureText = false,
}) {
  return FormBuilderTextField(
    name: name,
    obscureText: obscureText,
    style: GoogleFonts.poppins(fontSize: fontSize),
    cursorColor: mainRed,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: GoogleFonts.poppins(
        color: Colors.grey,
        fontWeight: FontWeight.w200,
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: mainRed,
        ),
      ),
    ),
  );
}
