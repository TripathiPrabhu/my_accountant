import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('images/Splash.png', fit: BoxFit.fill),
            ),
            Center(
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/3.8),
                child: Center(child: Column(
                  children: const [
                    FlutterLogo(size: 200,),

                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text('My\nAccountant',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,

                      ),),
                  ),

                  ],
                )),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
