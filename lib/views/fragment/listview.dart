import 'package:dols48/views/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListUi extends StatefulWidget {
  final String judul;
  final String member;
  final String detail;
  const ListUi({
    super.key,
    required this.judul,
    required this.member,
    required this.detail,
  });

  @override
  State<ListUi> createState() => _ListUiState();
}

class _ListUiState extends State<ListUi> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        color: Colors.white,
      ),
      width: screenWidth * 0.95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.judul,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 25,
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.member,
                    style: GoogleFonts.poppins(
                        color: blackColor, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    widget.detail,
                    style: GoogleFonts.poppins(color: blackColor),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
