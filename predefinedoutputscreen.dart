

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:mevoicingglove/constants/cards.dart';
import 'package:mevoicingglove/constants/constants.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Predefined_OutputScreen extends StatefulWidget {
  @override
  _Predefined_OutputScreenState createState() =>
      _Predefined_OutputScreenState();
}

class _Predefined_OutputScreenState extends State<Predefined_OutputScreen> {
  //Flutter TTS package
  final FlutterTts flutterTts = FlutterTts();

  //Realtime Databasse
  final fb = FirebaseDatabase.instance;
  var retrievedName = "";
  // var outputString="";
  String inputvalue = "";
  String gest01 = "gest01";
  String gest02 = "gest02";
  String outputName = "Hello";

  Future _speak() async {
    await flutterTts.setLanguage("en-IN");
    flutterTts.setPitch(1);
    await flutterTts.speak(retrievedName);
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'OutputScreen',
          ),
        ),
        body: MainCard(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // RaisedButton(
                //   onPressed: _fetchGesture,
                //   // Retrieve the data from Realtime (the value of inputvalue will be retrieved and stored in retrievedName variable)
                //   child: Text("Retrieve data"),
                // ),
                Text(
                  retrievedName,
                  style: comboTag,
                ),
                // GestureDetector(
                //   child: Icon(
                //     Icons.speaker_phone,
                //     color: Colors.white,
                //   ),
                //   onTap: _speak,
                // )
                SizedBox(height: height*.3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: 'logo',
                      child: GestureDetector(
                        onTap: _fetchGesture,
                        child: Container(child:  Image.asset('images/wifi.png',height:height*0.2 ,width: width*0.2,),),
                      ),
                    ),
                    SizedBox(height: height*.2,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _fetchGesture() async {
    final ref = await fb.reference().child("Input");
    setState(() {
      ref.child("inputvalue").once().then((DataSnapshot data) {
        setState(() {
          retrievedName = data.value;
         //retrievedName='gest07';
          _checkGesture();
          _speak();
        });
      });
    });
  }
  _checkGesture() {
    bool flag=false;
    List<String>outputStrings=[
      'Hello! How are you doing?',
      'Thanks a lot',
      'Can I get something to eat or drink',
      'That\'s great',
      'Yes',
      'No',
      'What time is it?',
      'Excuse me',
      'Can you please help me',
      'How much does this cost?',
      'Goodbye!',
    ];
    for(int i=1; i<=9;i++)
    {
      if(retrievedName == 'gest0$i') {
        setState(() {
          flag = true;
          retrievedName = outputStrings[i-1];
        }
        );
        break;
      }
    }
    if(flag==false)
    {
      setState(() {
        flag = true;
        retrievedName = 'Customised code';

      }
      );

      //write the customised ka code here

    }


  }
}
