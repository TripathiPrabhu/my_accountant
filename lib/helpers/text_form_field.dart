import 'package:flutter/material.dart';

class mytxtField extends StatelessWidget {
  String? lblTxt;
   mytxtField({ required this.lblTxt}) ;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      child: TextFormField(
          decoration: InputDecoration(
            //hintText: 'Email',
            contentPadding: EdgeInsets.zero,
              labelText: '${lblTxt}',
              labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20))
            //border: BorderRadius.circular(20.0)
          )),
    );
  }
}
