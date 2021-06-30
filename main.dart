import 'mainscreen.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'settingspage.dart';
import 'forgotpasspage.dart';
import 'registerpage.dart';
import 'outputscreen.dart';


void main() {
  runApp(
      MaterialApp(
        routes: {
          '/main':(context)=>MainScreen(),
          '/loginpage':(context)=>LoginPage(),
          '/settingspage':(context)=>SettingsPage(),
          '/forgotpasspage':(context)=>ForgotPasswordPage(),
          '/registerpage':(context)=>RegisterPage(),
          '/outputscreen':(context)=>OutputScreen(),

        },
        initialRoute: '/main',
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.black
        ),
      )
  );
}