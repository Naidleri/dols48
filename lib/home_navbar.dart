import 'package:dols48/home.dart';
import 'package:dols48/member.dart';
import 'package:dols48/profile.dart';
import 'package:flutter/material.dart';

class HomeNavbar extends StatefulWidget {
  const HomeNavbar({super.key});

  @override
  State<HomeNavbar> createState() => _HomeNavbarState();
}

class _HomeNavbarState extends State<HomeNavbar> {
  int _pageSelectedIndex = 0;
  static const List<Widget> _widget = <Widget>[
    Homepage(),
    MemberPage(),
    ProfilPage(),
  ];

  void _pageSelected(int index) {
    setState(() {
      _pageSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        Homepage(),
        MemberPage(),
        ProfilPage(),
      ][_pageSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageSelectedIndex,
        onTap: _pageSelected,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Member',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
