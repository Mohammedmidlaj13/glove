import 'package:flutter/material.dart';
import 'package:myvoicingglove/cards.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SafeArea(child:
    Scaffold(
      appBar: AppBar(title: Text('Register Here!'),),
      body: SingleChildScrollView(
        child: MainCard(
          child: Column(
            children: [

              //mail text box
              Container(
                width: width-20,
                margin: EdgeInsets.only(left: width*.1,right:width*.1,top: height*.05),
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter valid mail id as abc@gmail.com'
                  ),
                ),
              ),
              //password text
              Container(
                width: width-20,
                margin: EdgeInsets.only(left: width*.1,right:width*.1),
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your secure password'
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  final snackBar=SnackBar(content: Text("Register"));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                },
                child: Container(
                  margin: EdgeInsets.only(top: height*.02),
                  width: width*.35,
                  height: height*.05,

                  child: Center(child:  AutoSizeText(
                    'Register',
                    style: iconTag,
                    maxLines: 1,
                  )),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      border:Border.all(color: Colors.grey,width: 3)
                  ),

                ),
              ),

            ],
          ),

        ),
      ),
    ));
  }
}
