import 'package:obt_ecommerce/constants.dart';
//import 'package:obt_ecommerce/logIn_page.dart';
import '../components/customFormField.dart';
import 'package:flutter/material.dart';

import 'logIn_page.dart';


// ignore: must_be_immutable
class Registration extends StatelessWidget {

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appThemeColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 275,
                  margin: const EdgeInsets.only(left: 35.0, right: 35.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 130),
                          height: 275,
                          width: 12,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: iconColor,
                            size: 30,
                          )),
                      SizedBox(
                        width: 55,
                      ),
                      Container(
                        height: 270,
                        child: Image.asset(
                          "assets/images/3071357.jpg",
                          height: 270,
                          width: 205,
                        ),
                      )
                    ],
                  )),
              // SizedBox(
              //   height: 10,
              // ),
              Container(
                child: Text(
                  'Registration',
                  style: TextStyle(color: registrationTextColor, fontSize: 25, fontFamily: 'Montserrat'),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 35.0, right: 35.0),
                  child: Column(
                    children: [
                      CustomFormField(
                        hintText: 'Email',
                        icon: Icon(Icons.mail),
                        keyboardType: TextInputType.emailAddress,
                        errorMessage: 'Please enter a email address',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomFormField(
                        hintText: 'Password',
                        icon: Icon(Icons.lock),
                        keyboardType: TextInputType.phone,
                        errorMessage: 'Please enter a Password',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomFormField(
                        hintText: 'Confirm Password',
                        icon: Icon(Icons.lock),
                        keyboardType: TextInputType.phone,
                        errorMessage: 'Please enter a Confirm Password',
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 49,
                        width: 322,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          onPressed: () {
                            //Get.defaultDialog(title: "Processing", middleText: '');
                            // if (_formKey.currentState.validate()) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      LogIn()));
                            // }
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                                color: buttonTextColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                          color: appButtonColor,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account?',
                              style: TextStyle(color: accountCheckColor,fontFamily: 'Montserrat'),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 100.0, bottom: 100.0, right: 100.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Tap here to ',
                                    style: TextStyle(color: accountCheckColor,fontFamily: 'Montserrat'),
                                  ),
                                  // ignore: deprecated_member_use
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        LogIn()));
                                      },
                                      child: Text(
                                        'Sign In',
                                        style: TextStyle(color: signColor,fontFamily: 'Montserrat'),
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
