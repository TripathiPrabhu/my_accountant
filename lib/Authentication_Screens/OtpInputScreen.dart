import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../helpers/Login_Signup_Button.dart';
import '../helpers/myLogo.dart';


class OtpInputScreen extends StatefulWidget {


  @override
  _OtpInputScreenState createState() => _OtpInputScreenState();
}

class _OtpInputScreenState extends State<OtpInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            myLogo(),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('   Verify your Account',
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('    We sent 6 digits code to your Account',
                  style: TextStyle(fontSize:15,
                      fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 30,),
            // Implement 6 input fields
            OtpTextField(
              numberOfFields: 6,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MyButton(onPressed: () {  }, ButtonText: 'Verify and Proceed',),
            )
          ],
        ),
      ),
    );
  }
}
