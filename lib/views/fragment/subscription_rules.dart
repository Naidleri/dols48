import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

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
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: const CircleAvatar(
              radius: 50,
            ),
          ),
          Text(
            member,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            detail,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Subscribe'),
          ),
        ],
      ),
    );
  }
}
