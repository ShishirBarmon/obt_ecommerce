import 'package:flutter/material.dart';
import 'constants.dart';

class CustomFormField extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();
  TextEditingController textEditingController = TextEditingController();

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
  Widget build(BuildContext context) {
    return Container(
        height: 49,
        width: 322,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
        child: Form(
          key: _formKey,
          child: TextFormField(
            keyboardType: keyboardType,
            controller: textEditingController,
            validator: (String value) {
              if (value.isEmpty) {
                return '$errorMessage';
              }
              return null;
            },
            onSaved: (String email) {
              textEditingController = email as TextEditingController ;
            },
            decoration: InputDecoration(
              hintText: '$hintText',
              // labelStyle: TextStyle(color: textfieldColor),
              fillColor: textfieldColor,
              filled: true,
              border: InputBorder.none,

              // border: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(15.0)),
              //     borderSide:
              //         BorderSide(color: Colors.white, style: BorderStyle.none)),

              prefixIcon: icon,
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
