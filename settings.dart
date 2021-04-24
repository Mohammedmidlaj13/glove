import 'package:flutter/material.dart';
import 'package:gloveproto/constants.dart';


class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        color: Colors.grey,
        child: Text('SETTINGS PAGE/Click to go back',style: TextStyle(fontSize: 40,color: Colors.black,decoration: TextDecoration.none),),
      ),
    ));
  }
}
