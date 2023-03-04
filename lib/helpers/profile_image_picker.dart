import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Active_User_Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        width: 80,
        // color: Colors.green,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(12.0)),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    Positioned(
                      top: 45,
                        left: 58,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0XFF8A53FE),
                                    Color(0XFFBB9BFF),])
                          ),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                             onPressed: () {  },
                            icon: Icon(Icons.add,
                            size: 25.0,
                            color: Colors.white,),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
