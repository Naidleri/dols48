import 'package:dols48/views/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget showForm(String judul, String text, BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          judul,
          style: GoogleFonts.poppins(
              fontSize: 14, fontWeight: FontWeight.w600, color: blackColor),
        ),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: mainRed),
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.only(top: 16, left: 15),
          height: 60,
          width: MediaQuery.of(context).size.width * 0.85,
          child: Text(
            text,
            style: GoogleFonts.poppins(
                fontSize: 14, fontWeight: FontWeight.w400, color: blackColor),
          ),
        )
      ],
    ),
  );
}
