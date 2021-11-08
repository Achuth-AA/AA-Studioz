import 'package:flutter/material.dart';
import 'package:aastudioz/homepage.dart';
import 'RegisterPage.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  navigateToSignUp() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 45,
              ),
              Container(
                child: Image(
                    image: AssetImage("images/register.png"),
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover),
              ),
              SizedBox(height: 12),
              Text('Login Page', style: GoogleFonts.mcLaren(color: Colors.blue, fontSize: 28)),
              SizedBox(height: 2,),
              Padding(
                padding: EdgeInsets.symmetric(vertical:16,horizontal: 32),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: TextFormField(
                          validator: (input) {
                            if (input!.isEmpty) {return 'Field Cannot be Empty';}
                          },
                          decoration: InputDecoration(
                                labelText: 'Email',
                                prefixIcon: Icon(Icons.email)),
                          
                        ),
                      ),
                      Container(
                        child: TextFormField(
                          validator: (input) {
                            if (input!.length < 6){
                              return 'Password is too Short';
                            };
                          },
                          decoration:InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock)
                          ),
                          obscureText:true,
                          
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 0, 0, 255),
                          minimumSize: Size(150, 42),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Text('Create an Account?'),
                onTap: navigateToSignUp,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
