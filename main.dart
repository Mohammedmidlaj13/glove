import 'mainscreen.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'settingspage.dart';
import 'forgotpasspage.dart';
import 'registerpage.dart';
import 'outputscreen.dart';
import 'customisationpage.dart';


void main() {
  runApp(
      MaterialApp(
        routes: {
          '/':(context)=>MainScreen(),
          '/loginpage':(context)=>LoginPage(),
          '/settingspage':(context)=>SettingsPage(),
          '/forgotpasspage':(context)=>ForgotPasswordPage(),
          '/registerpage':(context)=>RegisterPage(),
          '/outputscreen':(context)=>OutputScreen(),
          '/customisationpage':(context)=>CustomisationPage(),

        },
        initialRoute: '/',
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.black
        ),
      )
  );
}
