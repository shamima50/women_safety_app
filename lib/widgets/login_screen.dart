import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:women_safety_app/components/custom_textfield.dart';
import 'package:women_safety_app/components/PrimaryButton.dart';
import 'package:women_safety_app/components/SecondaryButton.dart';
import 'package:women_safety_app/register_child.dart';
import 'package:women_safety_app/utils/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordShown = false;
  final _formKey = GlobalKey<FormState>();
  final _formData = Map<String, Object>();
  _onSubmit(){
    _formKey.currentState!.save();
    print(_formData['email']);
    print(_formData['password']);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(

        child:Padding(
          padding:const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children:[
                  Container(
                    height: MediaQuery.of(context).size.height*0.3,
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

                  Container(
                    height: MediaQuery.of(context).size.height*0.4,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomTextField(
                            hintText:"enter email",
                            textInputAction: TextInputAction.next,
                            keyboardtype: TextInputType.emailAddress,
                            prefix:Icon(Icons.person),
                            onsave: (email) {
                              _formData['email'] = email ?? "";
                            },
                            validate: (email) {
                              if (email!.isEmpty || email.length<3 || email.contains("@")){
                                return 'enter correct email';
                              }
                              return null;
                            },
                          ),
                          CustomTextField(
                            hintText:'enter password',
                            prefix:Icon(Icons.vpn_key_rounded),
                            onsave: (password) {
                              _formData['password'] = password ?? "";
                            },
                            validate: (password) {
                              if (password!.isEmpty || password.length<7){
                                return 'enter correct password';
                              }
                              return null;
                            },
                            suffix: IconButton(onPressed: () {
                              setState(() {
                                isPasswordShown = !isPasswordShown;
                              });

                            }, icon: isPasswordShown
                                ? Icon(Icons.visibility_off)
                               :Icon(Icons.visibility)),
                          ),
                          PrimaryButton(title:'RESISTER',onPressed:() {
                            if (_formKey.currentState!.validate()){
                              _onSubmit();

                            }

                          } ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    child: Expanded(
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
                  ),
                  SecondaryButton(title:'Resister new user',onPressed:() {


                  }),
    ],

              ),
            ),
          ),

        ),
      );
  }
}