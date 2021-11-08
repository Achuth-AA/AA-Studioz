import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Team{
  String? imageUrl;
  String? title;
  String? role;

  Team({this.imageUrl,this.role,this.title});
}

final List<Team> team = [
  Team(
    imageUrl: 'images/photo.jpeg',
    title: 'Achuth Dintakurthi',
    role: 'Founder'
  ),
  Team(
    imageUrl: 'images/photo.jpeg',
    title: 'Team Mate 2',
    role: 'XXXX'
  ),
  Team(
    imageUrl: 'images/photo.jpeg',
    title: 'Team Mate 3',
    role: 'YYYY'
  ),
  Team(
    imageUrl: 'images/photo.jpeg',
    title: 'Team Mate 4',
    role: 'YYYY'
  ),
  Team(
    imageUrl: 'images/photo.jpeg',
    title: 'Team Mate 5',
    role: 'YYYY'
  ),
];


class AboutusPage extends StatefulWidget {
  const AboutusPage({ Key? key }) : super(key: key);

  @override
  _AboutusPageState createState() => _AboutusPageState();
}

class _AboutusPageState extends State<AboutusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About us', style: GoogleFonts.dancingScript(fontSize: 26,)), backgroundColor:Color.fromRGBO(50,75,205,1), centerTitle: true, ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16,horizontal: 32),
          child: Column(
            children: <Widget>[
              Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                height: 40,
              ),
              Container(
                child: Image(
                    image: AssetImage("images/logo.jpg"),
                    width: 300,
                    height: 250,
                    fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Text('AA Studioz', style: GoogleFonts.ptSans(fontSize: 28, color: Color.fromRGBO(50, 75, 205, 1)),),
              SizedBox(height: 2,),
              Text('Make the Impossible Possible', style: GoogleFonts.ptSans(fontSize: 12, color: Color.fromARGB(255, 255, 255, 255)),),
              SizedBox(height: 8,),
              Text('hai hello welcome to the hjjffgh hfjfg mvjhfjhfj ggjghjh hgdd uuyut asdsxb vbnng rty uhdddv asjgg jggth e jdjdasd  as  anafdshg the aa studz jaufh ajHDKSAH ', style: GoogleFonts.ptMono(fontSize: 18 , letterSpacing: 1.4)),
              SizedBox(height: 8,),
              Text('hai hello welcome to the hjjffgh hfjfg mvjhfjhfj ggjghjh hgdd uuyut asdsxb vbnng rty uhdddv asjgg jggth e jdjdasd  as  anafdshg the aa studz jaufh ajHDKSAH ', style: GoogleFonts.ptMono(fontSize: 18 , letterSpacing: 1.4)),
              SizedBox(height: 5,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text('Our Team',
                  style: GoogleFonts.ptSans(fontSize: 27,  color: Color.fromRGBO(50, 75, 205, 1)),
                  textAlign: TextAlign.left,
                )
              ),
              SizedBox(height: 10),
              Container(
                height: 250,
                width: double.infinity,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal:10),
                  scrollDirection: Axis.horizontal,
                  itemCount: team.length,
                  itemBuilder: (BuildContext context, index){
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      height: 200,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 4.0),
                            blurRadius: 10.0,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 140,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                              image:  DecorationImage(
                                image: AssetImage(team[index].imageUrl!),
                                fit: BoxFit.cover, 
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text(
                              team[index].title!,
                              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10 , top:2),
                            child: Text(
                              team[index].role!,
                              style: TextStyle(fontSize: 14),
                            )
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 18),
              Text('See our Privacy Policy -> ' , style: GoogleFonts.ptSans(fontSize:18, letterSpacing:0.7, fontWeight: FontWeight.bold, color: Color.fromRGBO(50, 75, 205, 1)),),
              SizedBox(height: 20,),
              
            ],
          ),
        )
      )
    );
  }
}