import 'package:flutter/material.dart';
import 'cards.dart';
import 'mainscreen.dart';
import 'constants.dart';
import 'package:auto_size_text/auto_size_text.dart';

class LoginPage extends StatefulWidget {


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      appBar:AppBar(title: Text('Login Page'),),
      body: SingleChildScrollView(
        child: MainCard(
          child: Column(
            children: [
              Container(
                width: width-20,
                margin: EdgeInsets.only(left: width*.1,right:width*.1,top: height*.05),
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'Enter valid mail id as abc@gmail.com'
                  ),
                ),
              ),

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
                  final snackBar=SnackBar(content: Text("Login"));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Container(
                  margin: EdgeInsets.only(top: height*.02),
                  width: width*.35,
                  height: height*.05,

                  child: Center(child:  AutoSizeText(
                    'Log In',
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
              Container(
                margin: EdgeInsets.only(top: height*.02),
                width: width*.5,
                height: height*.05,

                child: Center(child:  GestureDetector(
                  onTap: (){
                    print('Forgot pass');
                    Navigator.pushNamed(context, '/forgotpasspage');
                  },
                  child: AutoSizeText(
                    'Forgot Password!',
                    style: forgotPassText,
                    maxLines: 1,

                  ),
                ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: height*.01),
                width: width*.5,
                height: height*.05,

                child: Center(child:  GestureDetector(
                  onTap: (){
                    print('register');
                    setState(() {
                      Navigator.pushNamed(context, '/registerpage');
                    });

                  },
                  child: AutoSizeText(
                    'Not Registered yet? Register here!',
                    style: registerText,
                    maxLines: 1,

                  ),
                )),


              ),




            ],
          ),

        ),
      ),
    ));
  }
}




