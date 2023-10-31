//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rova_23/screens/OTPScreen.dart';

//import 'package:rova_23/screens/select_language.dart';

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Container(
                width: 180.0,
                height: 180.0,
                child: Image.asset(
                  'images/logo.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),

              // "Enter Name" text box
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Enter Name',
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Enter Mobile No.',
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(222, 39, 156, 214),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                  ),
                  child: Text(
                    'Send OTP',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFECEEF0),
                    ),
                  ),
                ),
              ),

              // Container(
              //   padding: EdgeInsets.all(16.0),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(15.0),
              //   ),
              //   child: TextField(
              //     decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(15.0),
              //       ),
              //       labelText: 'Enter OTP',
              //     ),
              //   ),
              // ),

              // Container(
              //   padding: EdgeInsets.all(16.0),
              //   child: RichText(
              //     text: TextSpan(
              //       style: TextStyle(fontSize: 15.0, color: Colors.black),
              //       children: <TextSpan>[
              //         TextSpan(
              //           text:
              //               'By selecting Agree and Continue, I agree to the ',
              //         ),
              //         TextSpan(
              //           text: 'Terms and Conditions',
              //           style: TextStyle(
              //             color: Colors.blue,
              //             decoration: TextDecoration.underline,
              //           ),
              //           recognizer: TapGestureRecognizer()..onTap = () {},
              //         ),
              //         TextSpan(text: ' and '),
              //         TextSpan(
              //           text: 'Privacy Policy',
              //           style: TextStyle(
              //             color: Colors.blue,
              //             decoration: TextDecoration.underline,
              //           ),
              //           recognizer: TapGestureRecognizer()..onTap = () {},
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

              // Container(
              //   padding: EdgeInsets.all(16.0),
              //   child: ElevatedButton(
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => MyApp(),
              //         ),
              //       );
              //     },
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Colors.blue,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(10.0),
              //       ),
              //       padding: EdgeInsets.symmetric(
              //         vertical: 16.0,
              //         horizontal: 40.0,
              //       ),
              //     ),
              //     child: Text(
              //       'Agree and Continue',
              //       style: TextStyle(
              //         fontSize: 18,
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
