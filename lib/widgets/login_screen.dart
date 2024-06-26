import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:women_safety_app/components/custom_textfield.dart';
import 'package:women_safety_app/components/PrimaryButton.dart';
import 'package:women_safety_app/components/SecondaryButton.dart';
import 'package:women_safety_app/utils/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(

        child:Padding(
          padding:const EdgeInsets.all(8.0),
            child: Column(
              children:[
                Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                          width:100,

                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height*0.5,
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomTextField(
                          hintText:"enter name",
                          prefix:Icon(Icons.person),
                        ),
                        CustomTextField(
                          hintText:'enter name',
                          prefix:Icon(Icons.person),
                        ),
                        PrimaryButton(title:'RESISTER',onPressed:() {} ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text(
                    "FORGOT PASSWORD?",
                    style: TextStyle(fontSize: 18),
                  ),
                      SecondaryButton(title:'click here',onPressed:() {} ),
                    ],
                  ),
                ),
                SecondaryButton(title:'Resister new user',onPressed:() {} )

              ],

            ),
          ),

        ),
      );
  }
}