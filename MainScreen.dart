import 'package:flutter/material.dart';
import 'package:gloveproto/Cards.dart';
import 'package:gloveproto/constants.dart';
import 'settings.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  IconData iconState=Icons.bluetooth_disabled;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Expanded(child:
        RoundIconButton(
          iconChild: iconState,
          pressed: (){
            setState(() {
              iconState=iconState==Icons.bluetooth_disabled?Icons.bluetooth_connected:Icons.bluetooth_disabled;

            });
          },
        )
      ),
        Expanded(child:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ReusableCard(
                colour: iconColorBackground,
                cardChild: CardContent(
                  icon: Icons.login_rounded,
                  text: "Log In",
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: iconColorBackground,
                cardChild: CardContent(
                  icon: Icons.settings,
                  text: "Settings",
                  onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder:(context){
                       return Settings();
                        }
                      ));
                    }
                  ,
                ),
              ),
            ),
          ],
        ) ),
        Expanded(child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ReusableCard(
                colour: iconColorBackground,
                cardChild: CardContent(
                  icon: Icons.menu_book_outlined,
                  text: "User Manual",
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: iconColorBackground,
                cardChild: CardContent(
                  icon: Icons.exit_to_app_rounded,
                  text: "Quit",
                ),
              ),
            ),
          ],
        ) ),
  ]));
  }
}



class CardContent extends StatelessWidget {

  CardContent({this.icon,this.text,this.onPressed});
  final IconData icon;
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,size: 50,color: iconColor,),
          Text(text,style: txtStyle,)
        ],
      ),
    );
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.iconChild,@required this.pressed});
  final IconData iconChild;
  final Function pressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: 160.0,
        height: 160.0,
      ),
      onPressed: pressed,
      disabledElevation: 10,
      elevation: 10,
      shape: CircleBorder(),
      fillColor:Color(0XFF4C4f5E),
      child: Icon(iconChild),
    );
  }
}