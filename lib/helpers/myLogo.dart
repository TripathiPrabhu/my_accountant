import 'package:flutter/material.dart';

class myLogo extends StatelessWidget {
  const myLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      // color: Colors.red,
      height: 100,
      width: 80,
      child: FlutterLogo(),
    );
  }
}
