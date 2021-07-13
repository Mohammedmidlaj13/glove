
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
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest12'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });

                // Call the customization class
                openDialogueBox(context,'gest01');
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
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest13'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest02');
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
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest14'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest03');
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
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest15'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest04');
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
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest16'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest05');
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
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest17'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest06');
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
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest18'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest07');
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
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest19'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest08');
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
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest20'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest09');
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
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest21'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest10');
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
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest22'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest11');
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
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest23'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest12');
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
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest24'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest13');
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
                openDialogueBox(context,'gest14');
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
                // createDialog(context).then((value) {
                //   if (value != null) {
                //     Map<String, Object> createDoc = new HashMap();
                //     createDoc['Gest26'] = value;
                //     fb.child("Gesture").update(createDoc);
                //     final snackBar = SnackBar(content: Text('Gesture Updated'));
                //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //   }
                // });
                openDialogueBox(context,'gest14');
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
                openDialogueBox(context,'gest15');
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
                openDialogueBox(context,'gest16');
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
                openDialogueBox(context,'gest17');
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
               
                openDialogueBox(context,'gest18');
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
                
                openDialogueBox(context,'gest19');
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
                  gestcontroller.clear(); //remove the code if data  is not going to db
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
    updateData(gestcontroller.text, key, userID);
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


