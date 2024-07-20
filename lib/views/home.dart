import 'package:dols48/views/fragment/card_post.dart';
import 'package:dols48/views/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: whiteColor,
          title: Text(
            "Dols48",
            style: TextStyle(
                fontFamily: 'Franxurter',
                color: mainRed,
                fontSize: screenWidth * 0.08),
          ),
          shape: Border(
            bottom: BorderSide(width: 0.5, color: mainRed),
          ),
        ),
        body: Column(
          children: [
            CardPost(),
            CardPost(),
          ],
        ));
    ;
  }
}
