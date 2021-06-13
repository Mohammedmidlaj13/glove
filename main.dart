
import 'mainscreen.dart';
import 'package:flutter/material.dart';
import 'settingspage.dart';
import 'loginpage.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/main':(context)=>MainScreen(),
        '/settings':(context)=>SettingsPage(),
        '/loginpage':(context)=>LoginPage()
      },
      initialRoute: '/main',
      theme: ThemeData.dark().copyWith(
   scaffoldBackgroundColor: Colors.black
      ),
    )
  );
}


