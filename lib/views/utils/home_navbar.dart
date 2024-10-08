import 'package:dols48/views/home.dart';
import 'package:dols48/views/dm.dart';
import 'package:dols48/views/profile.dart';
import 'package:dols48/views/utils/const.dart';
import 'package:flutter/material.dart';

class HomeNavbar extends StatefulWidget {
  final int pageHalamanBack;
  const HomeNavbar({required this.pageHalamanBack, super.key});

  @override
  State<HomeNavbar> createState() => _HomeNavbarState();
}

class _HomeNavbarState extends State<HomeNavbar> {
  int _pageSelectedIndex = 0;

  static const List<Widget> _widget = <Widget>[
    Homepage(),
    DmPage(),
    ProfilPage(),
  ];

  @override
  void initState() {
    super.initState();
    _pageSelectedIndex = widget.pageHalamanBack;
  }

  void _pageSelected(int index) {
    setState(() {
      _pageSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _widget[_pageSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: whiteColor,
        currentIndex: _pageSelectedIndex,
        onTap: _pageSelected,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'DM',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: mainRed,
        selectedLabelStyle: TextStyle(
            fontSize: screenWidth * 0.03, fontWeight: FontWeight.w500),
        showUnselectedLabels: false,
      ),
    );
  }
}
