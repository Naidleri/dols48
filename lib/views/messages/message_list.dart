import 'package:dols48/views/chatroom/chat_room.dart';
import 'package:dols48/views/fragment/listview.dart';
import 'package:dols48/views/fragment/subscription_rules.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return  const ListUi(
        judul: 'Message',
        member: 'Hayong',
        detail: '안녕',
     
    );
  }
}
