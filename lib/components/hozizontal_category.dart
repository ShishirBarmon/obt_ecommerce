import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: ListView(
        scrollDirection: Axis.horizontal,

        children: [
          Category(
            image_location: 'assets/images/18980.jpg',
            image_caption: 'Burger',
          ),

          Category(
           image_location: 'assets/images/3071357.jpg',
             image_caption: 'Burger',
          ),Category(
            image_location: 'assets/images/18980.jpg',
            image_caption: 'Burger',
          ),Category(
             image_location: 'assets/images/3071357.jpg',
             image_caption: 'Burger',
           ),Category(
             image_location: 'assets/images/18980.jpg',
             image_caption: 'Burger',
          ),Category(
             image_location: 'assets/images/3071357.jpg',
             image_caption: 'Burger',
           ),Category(
             image_location: 'assets/images/18980.jpg',
             image_caption: 'Burger',
           ),Category(
            image_location: 'assets/images/3071357.jpg',
             image_caption: 'Burger',
           ),Category(
             image_location: 'assets/images/18980.jpg',
            image_caption: 'Burger',
           ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {

  final String image_location;
  final String image_caption;


  const Category({
    this.image_location,
    this.image_caption,
    Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(image_location,
            height: 54,
            width: 100,),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption, style: TextStyle(fontSize: 12.0,fontFamily: 'Montserrat'),)),
          ),
        ),
      ),
    );
  }
}
