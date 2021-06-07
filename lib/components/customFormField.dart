import 'package:flutter/material.dart';
import '../constants.dart';

class CustomFormField extends StatefulWidget {
  final String hintText;
    final String email;

  final String errorMessage;

  final Icon icon;
  final TextInputType keyboardType;

  CustomFormField({
    this.hintText,
    this.icon,
    this.email,
    this.keyboardType,
    this.errorMessage,
    Key key,
  }) : super(key: key);

  @override
  _CustomFormFieldState createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  var _formKey = GlobalKey<FormState>();

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 49,
        width: 322,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),
           ),
        child: Form(
          key: _formKey,
          child: TextFormField(
            keyboardType: widget.keyboardType,
            
            controller: textEditingController,
            validator: (String value) {
              if (value.isEmpty) {
                return '${widget.errorMessage}';
              }
              return null;
            },
            onSaved: (String email) {
              textEditingController = email as TextEditingController ;
            },
            decoration: InputDecoration(
              hintText: '${widget.hintText}',
              // labelStyle: TextStyle(color: textfieldColor),
              fillColor: Colors.grey[200],
              filled: true,
              border: InputBorder.none,

              // border: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(15.0)),
              //     borderSide:
              //         BorderSide(color: Colors.white, style: BorderStyle.none)),

              prefixIcon: widget.icon,
               focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffFECE61)),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          ),

                      enabledBorder: OutlineInputBorder(
                                               borderRadius: BorderRadius.all(Radius.circular(15.0)),


                        borderSide: BorderSide(
                          
                          color: appThemeColor,

                        ),

                      //   // set border width

                      //   borderRadius: BorderRadius.all(

                      //       Radius.circular(10.0)), // set rounded corner radius

                      // ),
                    ),
            ),
          ),
        )
        );
  }
}
