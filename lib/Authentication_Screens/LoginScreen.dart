import 'package:flutter/material.dart';
import '../helpers/Login_Signup_Button.dart';
import '../helpers/myLogo.dart';
import '../helpers/text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      'Login',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 30),
                    child: mytxtField(lblTxt: '   Email',),
                  ), //Email Text Field
                  mytxtField (lblTxt: '   Password',),//Password Text Field
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () { Navigator.pushNamed(context, 'forgotScreen'); },
                        child: const Text('Forgot your password?',
                          style: TextStyle(
                            color: Colors.black
                          ),

                        ),
                      ),
                    ],
                  ),
                 MyButton(ButtonText: 'Log In', onPressed: () {  },),//Log in button ....
                  const Padding(
                    padding: EdgeInsets.only(top: 40,),
                    child: Center(
                      child: Text(
                        'Or login with social account',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            height: 80,
                            width: 80,
                            child: Image.asset('images/Google.png')),
                        Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              'images/Facebook.png',
                              // fit: BoxFit.contain,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        const SizedBox(width: 10,),
                        Container(
                          // alignment:Alignment.center ,
                          height: 30,
                          width: 35,
                          decoration: BoxDecoration(
                            boxShadow: [
                              const BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, 5),
                                  blurRadius: 5.0)
                            ],
                            gradient: const LinearGradient(
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
                              Navigator.pushNamed(context, 'signupScreen');
                            },
                            icon: const Icon(
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
