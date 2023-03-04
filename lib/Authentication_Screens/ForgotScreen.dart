import 'package:flutter/material.dart';
import '../helpers/Login_Signup_Button.dart';
import '../helpers/myLogo.dart';
import '../helpers/text_form_field.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 30),
                    child: Center(
                      child: myLogo(),
                    ),
                  ), //logo image
                  const Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Text(
                      'Forgot Password',
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Please enter your email address.\nyou will recieve a link to create a new \npassword via email.',
                      style:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 30),
                    child: mytxtField(lblTxt: '   Email',),
                  ), //Email Text Field

                  MyButton(ButtonText: 'Send',
                    onPressed: () {Navigator.pushNamed(context, 'otpInputScreen') ; },)//Log in button ....

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
