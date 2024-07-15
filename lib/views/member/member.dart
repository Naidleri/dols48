import 'package:dols48/views/fragment/listview.dart';
import 'package:flutter/material.dart';

class Member extends StatefulWidget {
  const Member({super.key});

  @override
  State<Member> createState() => _MemberState();
}

class _MemberState extends State<Member> {
  @override
  Widget build(BuildContext context) {
    return ListUi(
      judul: 'Member',
      member: 'Jisun',
      detail: 'Fromis9',
    );
  }
}
