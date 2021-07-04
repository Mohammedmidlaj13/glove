import 'package:flutter/material.dart';
import 'package:mevoicingglove/constants/constants.dart';
import 'package:mevoicingglove/constants/cards.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:collection';

class CustomisationPage extends StatefulWidget {
  @override
  _CustomisationPageState createState() => _CustomisationPageState();
}

class _CustomisationPageState extends State<CustomisationPage> {
  //Code
  final fb = FirebaseDatabase.instance.reference();

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
              comboText: 'Combo 1',
              onPressed: () {
                createDialog(context,'Index and Middle Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest12'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 2',
              onPressed: () {
                createDialog(context,'Index, Middle and Pinky Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest13'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 2',
              onPressed: () {
                createDialog(context,'Index,Middle and Ring Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest14'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 3',
              onPressed: () {
                createDialog(context,'Index,Middle,Ring and Pinky Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest15'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 4',
              onPressed: () {
                createDialog(context,'Only Thumb bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest16'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 5',
              onPressed: () {
                createDialog(context,'Thumb and Pinky Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest17'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 6',
              onPressed: () {
                createDialog(context,'Thumb and Ring Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest18'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 7',
              onPressed: () {
                createDialog(context,'Thumb,Ring and Pinky Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest19'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 8',
              onPressed: () {
                createDialog(context,'Thumb and Middle Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest20'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 9',
              onPressed: () {
                createDialog(context,'Thumb,Middle and Pinky Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest21'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 10',
              onPressed: () {
                createDialog(context,'Thumb,Middle and Ring Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest22'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 11',
              onPressed: () {
                createDialog(context,'Thumb,Middle,Ring and Pinky Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest23'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 12',
              onPressed: () {
                createDialog(context,'Thumb and Index Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest24'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 13',
              onPressed: () {
                createDialog(context,'Thumb,Index and Pinky Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest25'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 14',
              onPressed: () {
                createDialog(context,'Thumb,Index and Ring Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest26'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 15',
              onPressed: () {
                createDialog(context,'Thumb,Index,Ring and Pinky Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest27'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 16',
              onPressed: () {
                createDialog(context,'Thumb,Index and Middle Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest28'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 17',
              onPressed: () {
                createDialog(context,'Thumb,Index,Middle and Pinky Finger bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest29'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 18',
              onPressed: () {
                createDialog(context,'Thumb,Index,Middle and Ring bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest30'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
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
              comboText: 'Combo 19',
              onPressed: () {

                createDialog(context,'All Fingers bent').then((value) {
                  if (value != null) {
                    Map<String, Object> createDoc = new HashMap();
                    createDoc['Gest31'] = value;
                    fb.child("Gesture").update(createDoc);
                    final snackBar = SnackBar(content: Text('Gesture Updated'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                });
              },
            ), //gest31
          ],
        ),
      )),
    ));
  }
}

//Code
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
                AutoSizeText(
                  comboText,
                  style: comboTag,
                  maxLines: 1,
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

Future<String> createDialog(BuildContext context,String text) {
  TextEditingController ed = TextEditingController();
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(text),
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
