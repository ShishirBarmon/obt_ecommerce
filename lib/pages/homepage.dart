import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:obt_ecommerce/components/bottomNavBar.dart';
import 'package:obt_ecommerce/components/products.dart';
import 'package:obt_ecommerce/constants.dart';
import 'package:obt_ecommerce/filter.dart';
//import 'package:obt_ecommerce/logIn_page.dart';
//import 'components/bottomNavBar.dart';
//import 'components/products.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'logIn_page.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();



  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget image_carousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/18980.jpg'),
          AssetImage('assets/images/3071357.jpg'),
        ],
        autoplay: false,
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        actions: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(right: 120.0),
              height: 30,
              width: 175,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
              child: Form(
                  key: _formKey,
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    controller: textEditingController,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please enter a product';
                      }

                      return null;
                    },
                    onSaved: (String email) {
                      textEditingController = email as TextEditingController;
                    },
                    decoration: InputDecoration(
                     

                      fillColor: appThemeColor,

                      filled: true,

                      border: InputBorder.none,

                     

                      suffixIcon: Icon(
                        Icons.search,
                        size: 25,
                        color: myColor,
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFECE61)),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),

                        borderSide: BorderSide(
                          color: iconColor,
                        ),

                       
                      ),
                    ),
                  )),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: GestureDetector(
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text('Join In'),
                ),
              ),
              decoration: BoxDecoration(color: Colors.grey), accountEmail: null, accountName: null,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('  Home', style: TextStyle(fontFamily: "Montserrat"),),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('  Profile', style: TextStyle(fontFamily: "Montserrat"),),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('  Checkout', style: TextStyle(fontFamily: "Montserrat"),),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('  Checkout Alternative', style: TextStyle(fontFamily: "Montserrat"),),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('  Your Order', style: TextStyle(fontFamily: "Montserrat"),),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('  Order Invoice', style: TextStyle(fontFamily: "Montserrat"),),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('  Terms and Services', style: TextStyle(fontFamily: "Montserrat"),),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('  Privacy Policy', style: TextStyle(fontFamily: "Montserrat"),),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('  Need Help', style: TextStyle(fontFamily: "Montserrat"),),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('  Offer', style: TextStyle(fontFamily: "Montserrat"),),
              ),
            ),
          ],
        ),
      ),
      body:      
  
       ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: image_carousel,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('No category Selected', style: TextStyle(fontFamily: "Montserrat"),),
                Container(
                  height: 29,
                  width: 122,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () {
                      //Get.defaultDialog(title: "Processing", middleText: '');
                      // if (_formKey.currentState.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Filter()));
                      // }
                    },
                    child: Row(
                      children: [
                        Text(
                          "filter",
                          style: TextStyle(
                              color: appThemeColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                              , fontFamily: "Montserrat"
                              ),
                        ),
                        SizedBox(width: 7,),
                     Image.asset(
                          "assets/images/eq.png",
                         
                        ),
                      ],
                    ),
                    
                    color: aliveColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                        
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Products(),
          ),
        BottomNavBar(),
        ],
      ),
      
      
    );
  }
}
