import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:obt_ecommerce/constants.dart';

class Products extends StatelessWidget {
  const Products({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        height: 250,
        width: 210,
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              color: Colors.grey[300],
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 140.0,  right: 10.0),
                      height: 18,
                      width: 26,
                      child: Center(
                          child: Text(
                        '-20%',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontFamily: "Montserrat"),
                      )),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 90,
                      child: Image.asset(
                        "assets/images/18980-removebg-preview.png",
                        height: 270,
                        width: 205,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Cheese',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat"),
                      ),
                    ),
                    SizedBox(height: 3,),

                    Container(
                      child: Text(
                        '\$ 150',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,

                            fontFamily: "Montserrat"),
                      ),
                    ),

           SizedBox(height: 3,),
                    Container(
                      margin: const EdgeInsets.only(left: 140.0,  right: 10.0),
                      height: 18,
                      width: 26,
                      child:  Center(child: Icon(Icons.add, color: Colors.white, size: 18,)),
                      decoration: BoxDecoration(
                        color: aliveColor,
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
