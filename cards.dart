import 'package:flutter/material.dart';
import 'constants.dart';

class MainCard extends StatelessWidget {
  MainCard({this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(10.0),

      decoration: BoxDecoration(

        color: mainColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.5),
            spreadRadius: 10,
            blurRadius: 5,
            offset: Offset(5, 7), // changes position of shadow
          )],
      ),
      child: child,
    );
  }
}



class BluetoothButton extends StatelessWidget {
  final Function onPressed;
  BluetoothButton({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Expanded(child:
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff221E33),width: 1),
                borderRadius: BorderRadius.circular(100),
                color: Color(0xff17181E),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(2, 3), // changes position of shadow
                  )],
              ),
              child: Image.asset("images/bluetooth.png",height: 200,width:200,)),
        ),
      ],
    )
    );
  }
}

class IconCard extends StatelessWidget {
  IconCard({@required this.iconName,@required this.icon,this.onPressed});

  final String iconName;
  final String icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width;
    return Expanded(child:
    Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
        SizedBox(width: 20),
        GestureDetector(
          onTap: onPressed,
          child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 30),
              width: width-40,  //-40 since it was overflowing
              height: 50,
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
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Image.asset("images/$icon.png",height: 60,width:60,),
                  SizedBox(width: 30,),
                  FittedBox( fit: BoxFit.contain,
                      child: Text(iconName,style: iconTag,))
                ],
              )),
        ),
      ],
    )
    );
  }
}




