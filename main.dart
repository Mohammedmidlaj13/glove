import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(home:
      Scaffold(
        appBar: AppBar(title: Center(child: Text('My Voicing Glove')),backgroundColor: Colors.teal.shade900, ),
         body: GloveApp())));
}

class GloveApp extends StatefulWidget {
  @override
  _GloveAppState createState() => _GloveAppState();
}

class _GloveAppState extends State<GloveApp> {
  bool i=false;
  IconData $s=Icons.bluetooth_connected;
  Color $c= Colors.grey.shade700;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         Container(

           width: 200,
           height: 300,
           child: FloatingActionButton(
             backgroundColor: $c,

             onPressed: (){
                setState(() {
                  if(i==true)
                  {
                    i=false;

                    $s=Icons.bluetooth_disabled;
                   $c= Colors.grey.shade700;
                  }
                  else
                  {
                    i=true;
                    $s=Icons.bluetooth_connected;
                    $c= Colors.green.shade500;
                  }

                          });

             },
             child: Icon(
               $s
             )


           ),
         ),
          ]
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            width: 250,
            child: Card(
              shadowColor: Colors.teal.shade900,
              child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(

                  onPressed: (){
                    print('logging in');
                  },
                  child: Text('Log in',style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                  ),),
                ),
              ),
            ),
          )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              child: Card(
                shadowColor: Colors.teal.shade900,
                child:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(

                    onPressed: (){
                      print('Settings');
                    },
                    child: Text('Settings',style: TextStyle(
                        color: Colors.black,fontSize: 16
                    ),),
                  ),
                ),
              ),
            )
          ],
        ),

      ],
    ),


    );
  }
}


