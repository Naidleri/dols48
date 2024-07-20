import 'package:dols48/views/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPost extends StatefulWidget {
  const CardPost({super.key});

  @override
  State<CardPost> createState() => _CardPostState();
}

class _CardPostState extends State<CardPost> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: whiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            const CircleAvatar(
              radius: 15,
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'widget.member',
                  style: GoogleFonts.poppins(
                      color: blackColor, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Text(
                      'widget.detail',
                      style: GoogleFonts.poppins(color: blackColor),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'widget.tanggal',
                      style: GoogleFonts.poppins(color: blackColor),
                    ),
                  ],
                ),
              ],
            ),
          ]),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: screenWidth,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: screenWidth * 0.5,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [Icon(Icons.favorite), Text(" 1.4 만")],
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [Icon(Icons.comment), Text(" 16 찬")],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          const Divider(
            color: Colors.grey,
            height: 1,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
