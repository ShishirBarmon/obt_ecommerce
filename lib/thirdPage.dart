import 'package:obt_ecommerce/constants.dart';
import 'package:obt_ecommerce/secondPage.dart';
import 'components/products.dart';
import 'customFormField.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ThirdPage extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/18980.jpg'),
          AssetImage('assets/3071357.jpg'),

        ],
        autoplay: false,
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: iconColor,
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
                      // labelStyle: TextStyle(color: textfieldColor),

                      fillColor: appThemeColor,

                      filled: true,

                      border: InputBorder.none,

                      // border: OutlineInputBorder(

                      //   borderRadius: BorderRadius.all(Radius.circular(15.0)),

                      //     borderSide:

                      //         BorderSide(color: Colors.white, style: BorderStyle.none)),

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

                        //   // set border width

                        //   borderRadius: BorderRadius.all(

                        //       Radius.circular(10.0)), // set rounded corner radius

                        // ),
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
                  style: ElevatedButton.styleFrom(
                   shape : RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ) ,
                  ),
                  child: Text('Join In'),

                ),
              ),
              decoration: BoxDecoration
                (
                   color: Colors.grey
              ),
            ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('  Home'),

            ),
          ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('  Profile'),
              ),
            ),  InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('  Checkout'),
              ),
            ),  InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('  Checkout Alternative'),
              ),
            ),  InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('  Your Order'),
              ),
            ),  InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('  Order Invoice'),
              ),
            ),  InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('  Terms and Services'),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('  Privacy Policy'),
              ),
            ), InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('  Need Help'),
              ),
            ), InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('  Offer'),
              ),
            ),

          ],
        ),
      ),
      body: ListView(
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
                Text('No category Selected'),
                Container(
                  height: 29,
                  width: 122,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () {
                      //Get.defaultDialog(title: "Processing", middleText: '');
                      // if (_formKey.currentState.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => SecondPage()));
                      // }
                    },
                    child: Text(
                      "Filter",
                      style: TextStyle(
                          color: appThemeColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
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
          )

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
