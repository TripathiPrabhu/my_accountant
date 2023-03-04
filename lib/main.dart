import 'package:flutter/material.dart';

import 'Authentication_Screens/ForgotScreen.dart';
import 'Authentication_Screens/LoginScreen.dart';
import 'Authentication_Screens/OtpInputScreen.dart';
import 'Authentication_Screens/signup_screen.dart';
import 'Authentication_Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'My-Accountant',
      initialRoute: '/',
      routes: {
        '/': (context)=> SplashScreen(),
        'loginScreen': (context)=> LoginScreen(),
        'signupScreen': (context)=> SignupScreen(),
        'forgotScreen': (context)=> ForgotScreen(),
        'otpInputScreen': (context)=> OtpInputScreen(),
      },
    );
  }
}
