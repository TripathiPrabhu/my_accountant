import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String? ButtonText;
  VoidCallback? onPressed;

  MyButton({required this.ButtonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Container(
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
            borderRadius: BorderRadius.circular(20),
          ),
          // color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: 50,
          //+ padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ElevatedButton(
            child: Text(
              '${ButtonText}',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(Colors.transparent),
                // foregroundColor: MaterialStateProperty.all(
                //     Colors.yellowAccent),
                overlayColor: MaterialStateProperty.all(
                    Colors.deepPurple[200]),
                shape: MaterialStateProperty.all<
                    RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      // side: BorderSide(color: Colors.black)
                    ))),
            onPressed: onPressed,
          )),
    );
  }
}
