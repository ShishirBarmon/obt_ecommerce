import 'package:flutter/material.dart';

class FilterItem extends StatefulWidget {
  final String filterText;
  final Icon filterIcon;

  const FilterItem({
    this.filterText,
    this.filterIcon,
    Key key,
  }) : super(key: key);

  @override
  _FilterItemState createState() => _FilterItemState();
}

class _FilterItemState extends State<FilterItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.grey[300],
      child: Container(
        height: 90,
        width: 90,
        child: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 7,
                ),
                widget.filterIcon,
                 SizedBox(
                   height: 32,
                 ),
                 Text(widget.filterText, style: TextStyle(fontSize: 18, fontFamily: "Montserrat"),),

              ],
            ),
          ),
        ),

        //  child: GridTile(
        //    footer: ,
        //  ),
      ),
    );
  }
}
