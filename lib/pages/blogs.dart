import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

final List<Map> articles = [
  {
    "title":"a new era in the artificial intelligence",
    "author":"durga",
  }
];

class BlogsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    initialIndex: 0,
    length: 5,
    child: Theme(
      data: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(50, 75, 205, 1),
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Blogs" , style: GoogleFonts.dancingScript(fontSize: 24,fontWeight: FontWeight.w800)),
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text("For You" , style: TextStyle(fontWeight: FontWeight.bold))
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text("AI" ,  style: TextStyle(fontWeight: FontWeight.bold))
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text("Business" ,  style: TextStyle(fontWeight: FontWeight.bold))
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text("Education" , style: TextStyle(fontWeight: FontWeight.bold))
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text("Others" , style: TextStyle(fontWeight: FontWeight.bold))
              ),
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Text("For you blogs"),
            ),
            Container(
              child: Text("AI Blogs")
            ),
            Container(
              child: Text("Business Blogs")
            ),
            Container(
              child: Text("education blogs")
            ),
            Container(
              child: Text("others blogs")
            )
          ] 
        ),
      )
    )
  );
}