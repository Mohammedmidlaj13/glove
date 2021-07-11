import 'package:flutter/material.dart';
import 'package:mevoicingglove/constants/constants.dart';
import 'package:mevoicingglove/constants/cards.dart';

class UserManual extends StatefulWidget {
  const UserManual({Key key}) : super(key: key);

  @override
  _UserManualState createState() => _UserManualState();
}



class _UserManualState extends State<UserManual> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('User Manual'),),
      body: MainCard(
        child: SingleChildScrollView(
          child: Column(
            children: [
            ImageHolder(image: 'gestr1.jpg'),
              ImageHolder(image: 'gestr2.jpg',),
            ImageHolder(image: 'gestr3.jpg',),
              ImageHolder(image: 'gestr4.jpg',),
              ImageHolder(image: 'gestr5.jpg',),
              ImageHolder(image: 'gestr6.jpg',),
              ImageHolder(image: 'gestr7.jpg',),
            ImageHolder(image: 'gestr8.jpg',),
              ImageHolder(image: 'gestr9.jpg',),
              ImageHolder(image: 'gestr10.jpg',),
            ImageHolder(image: 'gestr11.jpg',),


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
