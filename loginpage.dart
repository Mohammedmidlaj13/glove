import 'package:flutter/material.dart';
import 'main.dart';
import 'constants.dart';
import 'cards.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery. of(context). size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Login'),),
      body: MainCard(
        child: Column(
          children: [
            Container(
              width: maxWidth-20,
              margin: EdgeInsets.only(left: 10,right: 10,top: 40),
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
              width: maxWidth-20,
              margin: EdgeInsets.only(left: 10,right: 10),
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
            LoginPagebutton(
              width: maxWidth-100,
              buttonName: "Login",
            color: Colors.purple,
            onPressed: (){
                     final snackBar=SnackBar(content: Text("Logging in"));
                     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                     setState(() {
                          print("login pressed");
                                  });
                                },
            ),
            Container(
              width: maxWidth-200,
              height: 55,
              margin: EdgeInsets.only(left: 80,right: 80,top: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff17181E),
              ),
              child: GestureDetector(
                  onTap: (){
                    final snackBar=SnackBar(content: Text("forgot password"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Center(child: Text("Forgot password"))),
            )

          ],
        ),
      ),
    );
  }
}

class LoginPagebutton extends StatelessWidget {
  LoginPagebutton({@required this.onPressed,this.color,@required this.buttonName, this.width});
  final Function onPressed;
  final Color color;
  final String buttonName;
  final double  width;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onPressed,
        child: Container(

          width: width,
          height: 55,
          margin: EdgeInsets.only(left: 80,right: 80,top: 10),
          padding: EdgeInsets.all(10),

          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff221E33),width: 5),
            borderRadius: BorderRadius.circular(10),
            color: color,
            boxShadow: [
              BoxShadow(
                color: Colors.black87.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(5, 7), // changes position of shadow
              )],
          ),
          child: Center(child: Text(buttonName,style: loginButton,)),

        ));
  }
}
