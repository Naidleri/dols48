import 'package:dols48/views/dm.dart';
import 'package:dols48/views/fragment/bubble_chat.dart';
import 'package:dols48/views/utils/const.dart';
import 'package:dols48/views/utils/home_navbar.dart';
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
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              "Hayong",
              style: GoogleFonts.poppins(
                color: blackColor,
                fontSize: 18,
              ),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 14,
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeNavbar(
                            pageHalamanBack: 1,
                          ),
                        ),
                        (_) => false,
                      );
                    }),
                // ClipOval(
                //   child: Container(
                //     color: mainRed,
                //     width: 24,
                //     height: 24,
                //     child: const Center(
                //       child: Text(
                //         "H", // Example initial or icon
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 14,
                //         ),
                //       ),
                //     ),
                //   ),
                // )
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
