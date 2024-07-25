import 'package:dols48/views/fragment/button.dart';
import 'package:dols48/views/fragment/listview.dart';
import 'package:dols48/views/fragment/showForm.dart';
import 'package:dols48/views/member/member_list.dart';
import 'package:flutter/material.dart';
import 'package:dols48/views/utils/const.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: whiteColor,
          title: Text(
            "Dols48 Profile",
            style: GoogleFonts.poppins(
              color: blackColor,
              fontSize: screenWidth * 0.04,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              child: const CircleAvatar(
                radius: 50,
              ),
            ),
            const SizedBox(height: 20),
            TabBar(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                unselectedLabelStyle: GoogleFonts.poppins(),
                controller: _tabController,
                indicatorColor: mainRed,
                unselectedLabelColor: Colors.grey,
                labelColor: mainRed,
                tabs: const [
                  Tab(
                    text: 'Detail',
                  ),
                  Tab(
                    text: 'Membership',
                  ),
                  Tab(
                    text: 'Setting',
                  )
                ]),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: [
                _ProfileDetail(),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: ListUi(
                    judul: 'Member',
                    member: 'Gyuri',
                    detail: 'Fromis9',
                  ),
                ),
                Text('setting'),
              ],
            ))
          ],
        ),
        backgroundColor: whiteColor);
  }
}

class _ProfileDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          showForm('Username', 'yourusername', context),
          const SizedBox(height: 8),
          showForm('Email', 'youremail@mail.com', context),
          PublicButton(label: 'logout', onPressed: () {})
        ],
      ),
    );
  }
}
