import 'package:flutter/material.dart';
import 'package:mevoicingglove/constants/constants.dart';
import 'package:mevoicingglove/constants/cards.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:collection';
import 'package:mevoicingglove/authentication/database.dart';

class CustomisationPage extends StatefulWidget {
  @override
  _CustomisationPageState createState() => _CustomisationPageState();
}

class _CustomisationPageState extends State<CustomisationPage> {
  // Code to customize
  final fb = FirebaseDatabase.instance.reference();
  String userID = "";
  String key;
  TextEditingController gestcontroller = TextEditingController();
  // TextEditingController gest02controller = TextEditingController();
  // TextEditingController gest03controller = TextEditingController();

  // Call the customization class
  updateData(String gest01,String key,  String userID) async {
    await updateUserData(gest01,key);
    Navigator.pop(context);
  }




    @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Customisation'),
      ),
      body: MainCard(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * .06,
              margin: EdgeInsets.only(top: height * .02),
              child: AutoSizeText(
                'All the Customizable combinations: ',
                style: customTag,
                maxLines: 1,
              ),
            ),
            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Index and Middle Finger bent',

              onPressed: () {


                // Call the customization class
                openDialogueBox(context,'gest12');

              },
            ), //gest12

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Index, Middle and Pinky Finger bent',
              onPressed: () {

                openDialogueBox(context,'gest13');
              },
            ), //gest13

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Index,Middle and Ring Finger bent',
              onPressed: () {

                openDialogueBox(context,'gest14');
              },
            ), //gest14

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Index,Middle,Ring and Pinky Finger bent',
              onPressed: () {

                openDialogueBox(context,'gest15');
              },
            ), //gest15

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Only Thumb bent',
              onPressed: () {

                openDialogueBox(context,'gest16');
              },
            ), //gest16

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Thumb and Pinky Finger bent',
              onPressed: () {

                openDialogueBox(context,'gest17');
              },
            ), //gest17

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Thumb and Ring Finger bent',
              onPressed: () {

                openDialogueBox(context,'gest18');
              },
            ), //gest18

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Thumb,Ring and Pinky Finger bent',
              onPressed: () {

                openDialogueBox(context,'gest19');
              },
            ), //gest19

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Thumb and Middle Finger bent',
              onPressed: () {

                openDialogueBox(context,'gest20');
              },
            ), //gest20

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Thumb,Middle and Pinky Finger bent',
              onPressed: () {

                openDialogueBox(context,'gest21');
              },
            ), //gest21

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Thumb,Middle and Ring Finger bent',
              onPressed: () {

                openDialogueBox(context,'gest22');
              },
            ), //gest22

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Thumb,Middle,Ring and Pinky Finger bent',
              onPressed: () {

                openDialogueBox(context,'gest23');
              },
            ), //gest23

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Thumb and Index Finger bent',
              onPressed: () {

                openDialogueBox(context,'gest24');
              },
            ), //gest24

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Thumb,Index and Pinky Finger bent',
              onPressed: () {
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest25'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest25');
              },
            ), //gest25

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Thumb,Index and Ring Finger bent',
              onPressed: () {

                openDialogueBox(context,'gest26');
              },
            ), //gest26

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Thumb,Index,Ring and Pinky Finger bent',
              onPressed: () {
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest27'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest27');
              },
            ), //gest27

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Thumb,Index and Middle Finger bent',
              onPressed: () {
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest28'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest28');
              },
            ), //gest28

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Thumb,Index,Middle and Pinky Finger bent',
              onPressed: () {
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest29'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest29');
              },
            ), //gest29

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'Thumb,Index,Middle and Ring bent ',
              onPressed: () {
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest30'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest30');
              },
            ), //gest30

            SizedBox(
              height: 1,
              child: Container(
                color: Colors.white54,
              ),
            ),
            ComboCard(
              height: height,
              width: width,
              comboText: 'All Fingers bent',
              onPressed: () {
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest31'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest31');
              },
            ), //gest31
          ],
        ),
      )),
    ));
  }

  // Code to Customize
  openDialogueBox(BuildContext context,String keyValue) {
    key=keyValue;
    return showDialog(
        context: context,
        builder: (context) {

          return AlertDialog(
            title: Text('Edit Gesture Details'),
            content: Container(
              height: 100,
              child: Column(
                children: [
                  TextField(
                    controller: gestcontroller,
                    decoration: InputDecoration(hintText: keyValue),
                  ),

                ],
              ),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  submitAction(context);
                  showAlert(context);
                  gestcontroller.clear();
                  Navigator.pop(context);

                },
                child: Text('Submit'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              )
            ],
          );
        });
  }

  // Submit Action
  submitAction(BuildContext context) {
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
  bool flag=false;
    String a=gestcontroller.text.toLowerCase();
    for(int i=0;i<11;i++)
      {
        if( a == outputStrings[i].toLowerCase())
          {
            flag=true;
            break;
          }
      }
    print(flag);
    if(flag ==false)
      {
        updateData(gestcontroller.text, key, userID);

      }
    else {
      //displayBox();
      setState(() {
        showAlert(context);
      });

    }
    
  }

  showAlert(BuildContext context) {
  print('yotttoo');
    return showDialog(
        context: context,
        builder: (context) {

          return AlertDialog(
            title: Text('Warning'),
            content: Container(
              height: 100,
              child: Text('Such Gesture Already Exists,Do You Still Want To Continue?'),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  updateData(gestcontroller.text, key, userID);
                  Navigator.pop(context);

                },
                child: Text('Yes'),
              ),
              FlatButton(
                onPressed: () {

                  Navigator.pop(context);
                },
                child: Text('No'),
              )
            ],
          );
        });
  }



}

// new Code
class ComboCard extends StatelessWidget {
  ComboCard(
      {@required this.height,
        @required this.width,
        this.comboText,
        this.onPressed});

  final double height;
  final double width;
  final String comboText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: height*.1,

      margin: EdgeInsets.only(top: height * .02),
      child: Column(

        children: [

          Container(

            child: Row(

              children: [
                SizedBox(width: width*.04,),
                Expanded(
                  child: AutoSizeText(
                    comboText,
                    style: comboTag,
                    maxLines: 2,

                  ),
                ),
                SizedBox(width: width*.03,),
                GestureDetector(
                  onTap: onPressed,
                  child: Container(

                    margin: EdgeInsets.only(top: height * .02,bottom: height*.02),
                    width: width * .07,
                    child: FittedBox(
                      child: Icon(Icons.arrow_forward),
                      fit: BoxFit.contain,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 2)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Old Code
Future<String> createDialog(BuildContext context) {
  TextEditingController ed = TextEditingController();
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Update Data'),
          content: TextField(
            decoration: InputDecoration(
              hintText: 'Confirm your text',
            ),
            controller: ed,
          ),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop(ed.text.toString());
              },
              child: Text('Confirm Update'),
            ),
          ],
        );
      });
}





