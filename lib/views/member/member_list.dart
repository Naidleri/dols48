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
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return SubscriptionRules(
              member: 'Jisun',
              detail:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ante diam, vehicula eu mattis eu, vestibulum ornare quam. Donec dignissim egestas enim a luctus. Fusce est enim, eleifend ut faucibus quis, tempor sit amet velit. In sodales massa at imperdiet vestibulum. Vivamus sodales nibh libero, nec vehicula lectus varius eu. Integer nec enim nibh. Donec dignissim vehicula dapibus. Nulla non nisl quis sapien eleifend consequat. Morbi scelerisque non risus eget venenatis. Vestibulum vitae cursus sem. Phasellus in congue arcu. Sed auctor mi eu tincidunt efficitur.Curabitur quis ullamcorper orci. Aliquam sagittis sapien ante, malesuada viverra nisl maximus id. Sed facilisis arcu nec lorem condimentum rutrum. Proin consectetur vitae libero in ullamcorper. Donec scelerisque velit augue, vel rutrum turpis lobortis ut. Maecenas maximus augue ac volutpat vehicula. Aliquam vel tincidunt libero. Donec eget rutrum leo, sed feugiat nunc. Vestibulum varius pellentesque suscipit. Morbi commodo eleifend orci, malesuada volutpat sem. Nullam quis mauris quis augue luctus vestibulum sed nec diam. Nullam tincidunt tempus auctor.Donec cursus mollis sapien, eget egestas nunc blandit nec. Sed lacinia laoreet viverra. Donec tempus finibus lectus vel luctus. Phasellus fermentum posuere tellus, at aliquam nisl rhoncus et. In hac habitasse platea dictumst. Cras elit diam, tincidunt at ante aliquet, commodo elementum tellus. Morbi vitae felis eu risus lacinia aliquet. Etiam in erat lectus. Proin id diam sed velit dapibus maximus. Nullam blandit hendrerit diam in feugiat. Donec ac lorem at enim vulputate posuere ultricies in lorem. Nunc non orci a purus imperdiet maximus eu eget nisi. Mauris bibendum pulvinar leo, nec sollicitudin sapien accumsan at. Ut interdum commodo massa, vitae dignissim sapien varius et. Sed semper, arcu vestibulum laoreet sagittis, ante velit rutrum massa, sed mollis lectus magna et urna. Cras id scelerisque justoInteger eu solicitudin arcu, sed sodales elit. Curabitur faucibus placerat convallis. Nam ultricies magna sed purus accumsan venenatis. Quisque nec lobortis erat. Nunc posuere elementum ligula. Duis interdum ipsum congue, varius nisi id, imperdiet augue. Nam bibendum eu nibh ac mattis. Suspendisse vel diam dui.Nam cursus facilisis condimentum. Donec urna libero, vestibulum elementum ipsum id, mollis pellentesque nulla. Donec commodo nisl sed ex auctor varius. Nulla facilisi. Suspendisse tempus nibh sit amet purus consequat, eu rhoncus orci sodales. Aliquam sit amet lorem metus. Donec ornare sit amet felis ut viverra. Donec sit amet risus ut tortor pharetra condimentum. Sed blandit fermentum cursus. Mauris vitae mi cursus, feugiat tellus in, tristique sem. Phasellus dapibus ipsum eget massa luctus aliquam. Maecenas eget mi non eros volutpat finibus. Pellentesque a porta dolor. Morbi sed laoreet urna.Nunc ac mollis arcu. Proin euismod sapien vel maximus dictum. Nullam imperdiet eleifend aliquet. Quisque eleifend ex ut scelerisque tempus. Etiam faucibus ac leo ut efficitur. Nullam gravida, lectus in fringilla condimentum, diam felis molestie massa, sed pharetra tellus purus lacinia ipsum. Etiam et sem in ante vulputate iaculis. Morbi tempor hendrerit erat eu maximus. Nunc aliquet dui sit amet leo dapibus, eget vehicula lacus interdum. Nunc et metus pharetra, pretium ante in, mollis risus. Cras dictum tortor eget ultrices facilisis. Integer commodo augue vel odio bibendum, sed blandit justo congueQuisque sollicitudin metus fringilla porttitor mattis. Donec at velit mi. Suspendisse egestas, tortor ac euismod ultrices, mauris orci dignissim enim, vitae faucibus odio lacus a purus. Aenean convallis aliquam mi ut pharetra. Nam at justo turpis. Suspendisse faucibus neque velit, ac mattis magna porta et. Fusce vitae dui in ante tincidunt pulvinar sed nec mauris. Ut consectetur pharetra nisi id finibus. Sed venenatis sem turpis, quis rhoncus elit dapibus pharetra. Fusce in mollis felis. Suspendisse eget lacus quam. Ut a est est.Maecenas eget volutpat quam. Nullam et dolor vel lorem fringilla efficitur. Morbi rhoncus vulputate lacus, non mollis lacus pulvinar id. Ut pulvinar felis nisi, non elementum libero blandit faucibus. Ut eu sapien egestas, mollis diam et, tempor dui. Vestibulum tempus libero ipsum, at pretium ipsum dictum pulvinar. Pellentesque sed velit ut eros eleifend consequat. Etiam a mollis dolor. Ut placerat lacinia velit in pellentesque. Nullam dignissim sapien eget pretium accumsan. Praesent ut purus id ex posuere tincidunt vitae et velit. Suspendisse orci ipsum, mattis sollicitudin mollis elementum, tincidunt vel orci. Duis enim ex, malesuada at tristique sed, viverra nec eros. Pellentesque vitae ante consequat, ultricies justo ac, tempus augue. Vivamus ornare neque non mauris aliquam tincidunt',
            );
          },
        );
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