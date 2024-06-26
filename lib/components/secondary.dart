import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String title;
  final Function onPressesd;

  const SecondaryButton({Key?key,required this.title, required this.onPressesd}):super(key:key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child:TextButton(
          onPressed:() {
            onPressed();
          },
        child : Text(title,
          style:TextStyle(fontSize:18),
        )
      ),
    );

  }

}
