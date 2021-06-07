import 'package:obt_ecommerce/components/bottomNavBar.dart';
import 'package:obt_ecommerce/components/customFormField.dart';
import 'package:obt_ecommerce/constants.dart';
//import 'components/customFormField.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
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
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: iconColor,
                                size: 30,
                              ))),
                      SizedBox(
                        width: 55,
                      ),
                      Container(
                        height: 270,
                        child: Image.asset(
                          "assets/images/18980-removebg-preview.png",
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
                  'Login',
                  style: TextStyle(color: registrationTextColor, fontSize: 25,fontFamily: 'Montserrat'),
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
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomFormField(
                        hintText: 'Password',
                        icon: Icon(Icons.lock),
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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    BottomNavBar()));
                          },
                          child: Text(
                            "Login",
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
                                                        BottomNavBar()));
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
