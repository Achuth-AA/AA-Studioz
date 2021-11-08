import 'package:aastudioz/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aastudioz/homepage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  navigateTologin() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                              SizedBox(
                height: 45,
              ),
              Container(
                child: Image(
                    image: AssetImage("images/login.png"),
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover),
              ),
              SizedBox(height: 12),
              Text('Register Page', style: GoogleFonts.mcLaren(color: Colors.blue, fontSize: 28)),
              SizedBox(height: 2,),
              Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Form(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TextFormField(
                          validator: (input) {
                            if (input!.isEmpty) return 'Enter Name';
                          },
                          decoration: InputDecoration(
                            labelText: 'Name',
                            prefixIcon: Icon(Icons.person),
                          ),
                      ),
                    ),
                    Container(
                      child: TextFormField(
                          validator: (input) {
                            if (input!.isEmpty) return 'Enter Email';
                          },
                          decoration: InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email)),
                      ),
                    ),
                    Container(
                      child: TextFormField(
                          validator: (input) {
                            if (input!.length < 6)
                              return 'Provide Minimum 6 Character';
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                          ),
                          obscureText: true,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 0, 0, 255),
                          minimumSize: Size(150, 42),
                        ),
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 5,),
                  ],
                ),
              ),
            ),
            GestureDetector(
                child: Text('Already Have an Account?'),
                onTap: navigateTologin,
              ),
            SizedBox(height: 30),
              ],
            ),
          ),
        ),
      )
    );
  }
}