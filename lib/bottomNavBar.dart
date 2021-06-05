import 'package:flutter/material.dart';
import 'package:obt_ecommerce/constants.dart';

import 'firstPage.dart';
import 'secondPage.dart';
import 'thirdPage.dart';
import 'customFormField.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({ Key key }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomBar> {

  int _currentIndex = 0;

final List<Widget> _children = [
  ThirdPage(),
  SecondPage(),
  CustomFormField(),
  FirstPage(),
  SecondPage()

];

  void onTapTapped(int index) {
    _currentIndex = index;
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