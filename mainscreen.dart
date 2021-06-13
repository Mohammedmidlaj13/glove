import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'cards.dart';
import 'constants.dart';
import 'main.dart';
import 'package:app_settings/app_settings.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);
    @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(
    body: MainCard(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children:[
    SizedBox(height: 130,),
    BluetoothButton( onPressed: (){
     AppSettings.openBluetoothSettings();
    setState(() {
    print('bluetooth');
    });
    },),
    SizedBox(height: 70,),
    IconCard(icon: "login",iconName: "Log in",onPressed: (){
      setState(() {
        Navigator.pushNamed(context, '/loginpage');
      });
    },),
      IconCard(icon: "usermanual",iconName: "User Manual",onPressed: (){
        setState(() {
          print('user manual');
        });
      },),

    IconCard(icon: "settings",iconName: "Settings",onPressed: (){
      setState(() {
        Navigator.pushNamed(context, '/settings');
      });
    },),
    IconCard(icon: "close",iconName: "Exit",onPressed: (){
      setState(() {
        print('close');
      });
    },),
    SizedBox(height: 60,)
    ],
    ),
    ),
    ),
    );
    }
    }
