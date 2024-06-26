import 'package:flutter/material.dart';
import 'package:women_safety_app/components/custom_textfield.dart';
import 'package:women_safety_app/components/primaryButton.dart';
import 'package:women_safety_app/components/secondary.dart';
import 'package:women_safety_app/utils/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(

        child:Padding(
          padding:const EdgeInsects.all(8.0),
            child:Column(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text(
                  "USER LOGIN",
                  style:TextStyle(
                      fontSize:40,
                  fontWeight:FontWeight.bold,
                  color:primaryColor
                  ),

                ),
                Image.asset(
                  'assets/logo.jpg',
                  height:100,
                  width:10,

                ),
                CustomTextField(
                  hintText:"enter name",
                  prefix:Icon(Icons.person),
                ),
                CustomTextField(
                  hintText:'enter name',
                  prefix:Icon(Icons.person),
                ),
                PrimaryButton(title:'RESISTER',onPressed:() {} )
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    Text(
                      "Forget Password?",
                      style:TextStyle(fontSize:18),
                    ),
                    SecondaryButton(title:'Click Here',onPressed:() {} )
                  ],
                )

                SecondaryButton(title:'Resister new user',onPressed:() {} )
              ],
            ),
          ),

        )
      ),

    );

  }
}