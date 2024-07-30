import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dols48/views/fragment/button.dart';

class SubscriptionRules extends StatelessWidget {
  final String member;
  final String detail;

  const SubscriptionRules({
    required this.member,
    required this.detail,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      constraints: BoxConstraints(
        maxHeight: screenHeight * 0.75, // Maksimal tinggi 3/4 dari layar
      ),
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: const CircleAvatar(
                      radius: 30,
                    ),
                  ),
                  Text(
                    member,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    detail,
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: PublicButton(
              label: "Subscribe",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
