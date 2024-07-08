import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 47, 44, 44),
      appBar: AppBar(
        title: const Text(
          "Dols 48",
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.w900, fontSize: 30),
        ),
        backgroundColor: const Color.fromARGB(255, 47, 44, 44),
      ),
      body: const Text("homepage"),
    );
  }
}
