import 'package:flutter/material.dart';
import 'package:obt_ecommerce/constants.dart';
//import 'package:obt_ecommerce/homepage.dart';
import 'package:obt_ecommerce/pages/homepage.dart';
import 'package:obt_ecommerce/pages/logIn_page.dart';
import '../pages/registration_page.dart';
//import '../logIn_page.dart';
import 'customFormField.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({ Key key }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int _currentIndex = 0;

final List<Widget> _children = [
  HomePage(),
  LogIn(),
  CustomFormField(),
  HomePage(),
  Registration()

];

  void onTapTapped(int index) {
    setState(() {
          _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


    body: _children[_currentIndex],

    bottomNavigationBar: BottomNavigationBar(
        onTap: onTapTapped,
        currentIndex: _currentIndex,
        backgroundColor: indigoColor,
        iconSize: 35,
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 9.5),
                child: Icon(
                  Icons.home,
                  color: aliveColor,
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: aliveColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_active,
                color: aliveColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                color: aliveColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_outlined,
                color: aliveColor,
              ),
              label: ""),
        ],
      ),
      
    );
  }
}