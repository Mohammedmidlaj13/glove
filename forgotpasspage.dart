import 'package:flutter/material.dart';
import 'package:myvoicingglove/cards.dart';
import 'constants.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('Forgot Password'),),
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
                      hintText: 'Enter your new password'
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){


                },
                child: Container(
                  margin: EdgeInsets.only(top: height*.02),
                  width: width*.35,
                  height: height*.05,

                  child: Center(child:  AutoSizeText(
                    'Reset Password',
                    style:  TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      fontFamily: 'Staatliches',
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
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
