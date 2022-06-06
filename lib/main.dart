import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hanil_title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'chat used firebase',
      home: Scaffold(
        body:Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 1.0),
          colors: <Color>[
            const Color(0xff003063),
            const Color(0xff2f647a),
          ],
          stops: <double>[0.0, 1.0],
          tileMode: TileMode.clamp,

      ),
      ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                child: Theme(
                data: ThemeData(
                  primaryColor: Colors.white,
                  inputDecorationTheme: InputDecorationTheme(
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Colors.grey)
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Colors.white)
                    ),
                  )
                ),
                child: Container(
                  padding: EdgeInsets.all(106),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          labelText: '아이디',
                          contentPadding: EdgeInsets.only(top:24,bottom: 12),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      Padding(padding: EdgeInsets.only(top:28)),
                      TextField(
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          labelText: '비밀번호',
                          contentPadding: EdgeInsets.only(top:24,bottom: 12),
                        ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                      ),
                    ],
                  ),
                ),
              ),
              )
            ],
          ),
        ),
    )
    )
      );
    }
}

/*
class Login extends StatefulWidget {
  @override
  State createState() => LoginState();
}

class LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Center(

    );

  }

}
*/