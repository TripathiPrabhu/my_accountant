import 'package:flutter/material.dart';
import '../helpers/Login_Signup_Button.dart';
import '../helpers/myLogo.dart';
import '../helpers/profile_image_picker.dart';
import '../helpers/text_form_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                  //logo image
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 30),
                    child: Center(
                      child:myLogo(),
                    ),
                  ),
                  //User Picked Image
                  Active_User_Card(),
                  const Text(
                    'Sign Up',
                    style:
                    TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25,bottom: 20),
                    child: mytxtField(lblTxt: 'Name',),
                  ), //Email Text Field
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: mytxtField(lblTxt: 'Mobile Number',),
                  ), //Password Text Field
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: mytxtField(lblTxt: 'Email',),
                  ), //Password Text Field
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: mytxtField(lblTxt: 'Password',),
                  ), //Password Text Field
                  MyButton(ButtonText: 'Sign Up', onPressed: () {  },),//Log in button ....

                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        SizedBox(width: 10,),
                        Container(
                          // alignment:Alignment.center ,
                          height: 30,
                          width: 35,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, 5),
                                  blurRadius: 5.0)
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.0, 1.0],
                              colors: [
                                Color(0XFF8A53FE),
                                Color(0XFFBB9BFF),
                              ],
                            ),
                            color: Colors.deepPurple.shade300,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: IconButton(
                            alignment: Alignment.center,
                            onPressed: () {
                              Navigator.pushNamed(context, 'loginScreen');
                            },
                            icon: Icon(
                              Icons.arrow_right_alt,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
