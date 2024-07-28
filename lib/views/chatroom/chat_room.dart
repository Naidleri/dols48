import 'package:dols48/views/fragment/bubble_chat.dart';
import 'package:dols48/views/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key});

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text(
              "Hayong",
              style: GoogleFonts.poppins(
                color: blackColor,
                fontSize: 18,
              ),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.arrow_back,
                  size: 14,
                ),
                const SizedBox(width: 8),
                Material(
                  color: mainRed,
                  shape: const CircleBorder(),
                  child: const SizedBox(
                    width: 26,
                    height: 26,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BubbleChat(message: 'testsda', time: '12.30'),
        ),
        backgroundColor: Colors.blueGrey[50]);
  }
}
