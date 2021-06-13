import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:gloveproto2/constants.dart';
import 'cards.dart';
import 'constants.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
  double maxHeight = MediaQuery. of(context). size.height;
  double maxWidth = MediaQuery. of(context). size.width;

  return Scaffold(
      appBar: AppBar(title: Text('Settings'),backgroundColor: Colors.black,),
      body: SafeArea(
        child: MainCard(
          child: Column(
            children: [
              ProfileSection(),

              Container(
                margin: EdgeInsets.only(top: 20),
                width:maxWidth ,
                //color: Colors.white,
                child: Row(
                  children: [
                    Column(
                      children: [

                        SettingsCard(cardName: "Customisation",onPressed: (){
                          setState(() {
                            print("Customisation pressed");
                          });
                        },),
                        SettingsCard(cardName: "Volume",onPressed: (){
                          setState(() {
                            print("Volume pressed");
                          });
                        },),
                        SettingsCard(cardName: "Privacy & Policy",onPressed: (){
                          setState(() {
                            print("P&P pressed");
                          });
                        },),
                        SettingsCard(cardName: "About",onPressed: (){
                          setState(() {
                            print("About pressed");
                          });
                        },),

                      ],
                      
                    )
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsCard extends StatelessWidget {

  SettingsCard({@required this.cardName, this.onPressed});
final String cardName;
final Function onPressed;
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery. of(context). size.width;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(left: 10,right: 10,top: 15),
        height: 80,
        width: maxWidth-20,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff221E33),width: 5),
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff17181E),
            boxShadow: [
              BoxShadow(
                color: Colors.black87.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(5, 7), // changes position of shadow
              )],
          ),
          child:
          Center(child: Text(cardName,style: settingsMain,))),
    );
  }
}

class ProfileSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
           Column(
             children: [
               SizedBox(height: 10,),
               CircularProfileAvatar(
               '',
                child: Center(
                  child: Icon(Icons.person
                  ,size: 90,
                    color: Colors.black,

                  ),
                ),
                 backgroundColor: Colors.grey,
        ),
             ],
           ),
        SizedBox(width: 10,),
        Column(
          children: [
            SizedBox(height: 20,),
            Text('Username',style: profileName,)
          ],
        ),

      ],
    );
  }
}
