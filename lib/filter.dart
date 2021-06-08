// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:obt_ecommerce/constants.dart';
//
// import 'components/filter_item.dart';
//
// class Filter extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: appThemeColor,
//
//         body: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.only(
//                 left: 25.0, right: 25.0, top: 55.0, bottom: 50.0),
//             child: Expanded(
//
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 children: [
//                   FilterItem(
//                     filterText: 'Fruits & Vegetables',
//                     filterIcon: Icon(
//                    FontAwesomeIcons.appleAlt,
//                       size: 45,
//                     ),
//                   ),
//                   FilterItem(
//                      filterText: 'Meats & Fish',
//                     filterIcon: Icon(
//                       FontAwesomeIcons.fish,
//                       size: 45,
//                     ),
//                   ),
//                   FilterItem(
//                     filterText: 'Snacks',
//                     filterIcon: Icon(
//                    FontAwesomeIcons.coffee,
//                       size: 45,
//                     ),
//                   ),
//                   FilterItem(
//                      filterText: 'Pet Care',
//                     filterIcon: Icon(
//                    FontAwesomeIcons.birthdayCake,
//                       size: 45,
//                     ),
//                   ),
//                   FilterItem(
//  filterText: 'Home & Cleaning',
//                     filterIcon: Icon(
//                    FontAwesomeIcons.sprayCan,
//                       size: 45,
//                     ),                ),
//                   FilterItem(
//  filterText: 'Dairy',
//                     filterIcon: Icon(
//                    FontAwesomeIcons.wineGlassAlt,
//                       size: 45,
//                     ),                ),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }
// }
