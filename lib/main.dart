import 'package:flutter/material.dart';
import 'package:obt_ecommerce/pages/homepage.dart';

import 'pages/registration_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
       
      //   primarySwatch: Colors.white,
      // ),
      home: HomePage(),
    );
  }
}

   