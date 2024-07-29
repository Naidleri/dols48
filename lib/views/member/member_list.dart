import 'package:dols48/views/fragment/listview.dart';
import 'package:dols48/views/fragment/subscription_rules.dart';
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
      onTap: () {
        showBottomSheet(
            context: context,
            builder: (context) {
              return SubscriptionRules(
                member: 'Jisun',
                detail: 'Fromis9',
              );
            });
      },
    );
  }
}

// Future<List<Map<String, String>>> fetchMemberData() async {
//   final response = await http.get(Uri.parse('https://example.com/api/members'));

//   if (response.statusCode == 200) {
//     final List data = jsonDecode(response.body);
//     return data.map((item) => {
//       'judul': item['judul'],
//       'member': item['member'],
//       'pesan': item['pesan'],
//     }).toList();
//   } else {
//     throw Exception('Failed to load members');
//   }
// }

// body: FutureBuilder<List<Map<String, String>>>(
//         future: fetchMemberData(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return Center(child: Text('No data available'));
//           } else {
//             final data = snapshot.data!;
//             return ListView.builder(
//               itemCount: data.length,
//               itemBuilder: (context, index) {
//                 return ListUi(
//                   judul: data[index]['judul']!,
//                   member: data[index]['member']!,
//                   pesan: data[index]['pesan']!,
//                 );
//               },
//             );
//           }
//         },
//       ),