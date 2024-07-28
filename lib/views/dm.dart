import 'package:dols48/views/fragment/listview.dart';
import 'package:dols48/views/member/member_list.dart';
import 'package:dols48/views/messages/message_list.dart';
import 'package:dols48/views/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DmPage extends StatefulWidget {
  const DmPage({super.key});

  @override
  State<DmPage> createState() => _DmPageState();
}

class _DmPageState extends State<DmPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: whiteColor,
          title: Text(
            "Dols48 DM",
            style: GoogleFonts.poppins(
              color: blackColor,
              fontSize: screenWidth * 0.04,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: const Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(3.0),
                child: Message(),
              ),
              Member(),
            ],
          ),
        ),
        backgroundColor: Colors.blueGrey[50]);
  }
}
