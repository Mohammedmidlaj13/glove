import 'package:flutter/material.dart';
import 'constants.dart';
import 'cards.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'customtype1.dart';


class CustomisationPage extends StatefulWidget {
  

  @override
  _CustomisationPageState createState() => _CustomisationPageState();
}

class _CustomisationPageState extends State<CustomisationPage> {


  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('Customisation'),),
      body: MainCard(
        child:SingleChildScrollView(
          child: Column(

            children: [
              Container(
                height: height*.06,
                margin: EdgeInsets.only(top: height*.02),
                child: AutoSizeText('All the Customizable combinations: ',style: customTag,maxLines: 1,),
              ),
              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Index and Middle Finger bend',
                onPressed: (){
                    final snackBar=SnackBar(content: Text('Saving..'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    setState(() {

                    });


              },), //gest12

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Index, Middle and Pinky Finger bend',),//gest13

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Index,Middle and Ring Finger bend',),//gest14

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Index,Middle,Ring and Pinky Finger bend',),//gest15

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Only Thumb bend',),//gest16

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Thumb and Pinky Finger bend',),//gest17

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Thumb and Ring Finger bend',),//gest18

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Thumb,Ring and Pinky Finger bend',),//gest19

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Thumb and Middle Finger bend',),//gest20

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Thumb,Middle and Pinky Finger bend',),//gest21

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Thumb,Middle and Ring Finger bend',),//gest22

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Thumb,Middle,Ring and Pinky Finger bend',),//gest23

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Thumb and Index Finger bend',),//gest24

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Thumb,Index and Pinky Finger bend',),//gest25

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Thumb,Index and Ring Finger bend',),//gest26

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Thumb,Index,Ring and Pinky Finger bend',),//gest27

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Thumb,Index and Middle Finger bend',),//gest28

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Thumb,Index,Middle and Pinky Finger bend',),//gest29

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'Thumb,Index,Middle and Ring bend',),//gest30

              SizedBox(height: 1,child: Container(color: Colors.white54,),),
              ComboCard(height: height, width: width,comboText: 'All Fingers Bend',),//gest31

            ],
          ),
        )
      ),
    ));
  }
}

class ComboCard extends StatelessWidget {
  ComboCard({@required this.height,@required this.width,this.comboText,this.onPressed});

  final double height;
  final double width;
  final String comboText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: height*.1,

      margin: EdgeInsets.only(top: height*.02),
      child: Column(
        children: [
          AutoSizeText(comboText,style: comboTag,),
          Row(
            children: [
              Container(
                width: width*.8,
                 margin: EdgeInsets.only(left: width*.05,top: height*.004),
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: comboText,
                      hintText: ''
                  ),
                ),
              ),
              GestureDetector(
                onTap: onPressed,
                child: Container(
                  margin: EdgeInsets.only(top: height*.02),
                  width: width*.08,


                  child: FittedBox(
                    child: Icon(Icons.done),
                    fit: BoxFit.contain,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      border:Border.all(color: Colors.grey,width: 2)
                  ),

                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
