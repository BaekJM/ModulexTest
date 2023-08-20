//
// import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
// import 'package:flutter/material.dart';
// import 'package:modulexapp/module/AppbarPage.dart';
//
//
// class Goods_Mode extends StatelessWidget {
//   const Goods_Mode({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.grey,
//         appBar: CustomAppBar(),
//         body: Column(
//           children: [
//             Text(
//               'Statistics',
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 25.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//
//             ///////////////////////////////
//
//             DefaultTabController(
//               length: 2,
//               child: Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 20.0),
//                 height: 50.0,
//                 decoration: BoxDecoration(
//                   color: Colors.white24,
//                   borderRadius: BorderRadius.circular(25.0),
//                 ),
//                 child: TabBar(
//                   indicator: BubbleTabIndicator(
//                     tabBarIndicatorSize: TabBarIndicatorSize.tab,
//                     indicatorHeight: 40.0,
//                     indicatorColor: Colors.white,
//                   ),
//                   labelStyle: TextStyle(
//                     color: Colors.deepPurpleAccent, //<-- SEE HERE
//                   ),
//                   labelColor: Colors.black,
//                   unselectedLabelColor: Colors.white,
//                   tabs: <Widget>[
//                     Text('My Country'),
//                     Text('Global'),
//                   ],
//                   onTap: (index) {},
//                 ),
//               ),
//             ),
//
//             ///////////////////////////////
//
//             DefaultTabController(
//               length: 3,
//               child: TabBar(
//                 indicatorColor: Colors.transparent,
//                 labelStyle: TextStyle(
//                   color: Colors.deepPurpleAccent, //<-- SEE HERE
//                 ),
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.white60,
//                 tabs: <Widget>[
//                   Text('Total'),
//                   Text('Today'),
//                   Text('Yesterday'),
//                 ],
//                 onTap: (index) {},
//               ),
//             )
//
//           ],
//         )
//     );
//   }
// }
