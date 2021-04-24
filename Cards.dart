import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour,this.cardChild,this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color:colour,
            borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black87.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 5,
              offset: Offset(5, 7), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}

