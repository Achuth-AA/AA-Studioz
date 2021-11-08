import 'package:aastudioz/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';

import 'RegisterPage.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 45,
                ),
                Container(
                  child: Image(
                      image: AssetImage("images/start.png"),
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover),
                ),
                SizedBox(height: 20),
                RichText(
                    text: TextSpan(
                        text: 'Welcome to ',
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        children: <TextSpan>[
                      TextSpan(
                        text: 'AA Studioz',
                        style: GoogleFonts.cairo(fontSize: 24,color:Colors.blue))
                    ])),
                SizedBox(
                  height: 15,
                ),
                Text('Make the Impossible Possible ',
                    style: TextStyle(color: Colors.black)),
                SizedBox(
                  height: 14,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 0, 0, 255),
                    minimumSize: Size(150, 42),
                  ),
                  child: Text('Login',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 14,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 0, 0, 255),
                    minimumSize: Size(150, 42),
                  ),
                  child: Text('Register',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
