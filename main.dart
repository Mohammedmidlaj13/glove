import 'package:flutter/material.dart';
import 'MainScreen.dart';
import 'constants.dart';
const TextStyle textStyle=TextStyle(fontSize: 18,);

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(



    ),

    home: Scaffold(
      appBar: AppBar(title: Center(child: Text('My Voicing Glove',style:textStyle ,)),backgroundColor: appBarColor,),
      body: MainScreen(),

    ),
  )
  );}


