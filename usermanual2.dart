import 'package:flutter/material.dart';
import 'package:mevoicingglove/constants/constants.dart';
import 'package:mevoicingglove/constants/cards.dart';

class UserManual2 extends StatefulWidget {


  @override
  _UserManual2State createState() => _UserManual2State();
}



class _UserManual2State extends State<UserManual2> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('User Manual'),),
      body: MainCard(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Expanded(child: Container(
                color: Colors.white,
              )),
              ImageHolder(image: 'gestr12.jpg'),
              ImageHolder(image: 'gestr13.jpg',),
             ImageHolder(image: 'gestr14.jpg',),
              ImageHolder(image: 'gestr15.jpg',),
              ImageHolder(image: 'gestr16.jpg',),
              ImageHolder(image: 'gest17.jpg',),
             ImageHolder(image: 'gestr18.jpg',),
              ImageHolder(image: 'gestr19.jpg',),
              ImageHolder(image: 'gestr20.jpg',),
              ImageHolder(image: 'gestr21.jpg',),
              ImageHolder(image: 'gestr23.jpg',),
              ImageHolder(image: 'gestr24.jpg',),
              ImageHolder(image: 'gestr25.jpg',),
              ImageHolder(image: 'gestr26.jpg',),
              ImageHolder(image: 'gestr27.jpg',),
              ImageHolder(image: 'gestr28.jpg',),
              ImageHolder(image: 'gestr29.jpg',),
              ImageHolder(image: 'gestr30.jpg',),
              ImageHolder(image: 'gestr31.jpg',),

            ],
          ),
        ),
      ),
    ));
  }
}

class ImageHolder extends StatelessWidget {
  ImageHolder({@required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('images/$image'),
    );
  }
}
