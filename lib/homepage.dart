import 'package:aastudioz/pages/products.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Navigationdrawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductsList {
  String? imgurl;
  String? title;
  String? desc;
  double? rating;

  ProductsList({this.imgurl,this.desc,this.rating,this.title});
}

class Ongoinglist{
  String? imgurl;
  String? title;
  String? desc;

  Ongoinglist({this.imgurl,this.title,this.desc});
}

final List<Ongoinglist> ongoinglist = [
  Ongoinglist(
    imgurl: 'images/comingsoon.jpeg',
    title: 'AA Cart',
    desc: 'User Friendly E-Commerce App',
  ),
  Ongoinglist(
    imgurl: 'images/comingsoon.jpeg',
    title: 'AA Vision',
    desc: 'NA',
  ),
  Ongoinglist(
    imgurl: 'images/comingsoon.jpeg',
    title: 'AA Automation',
    desc: 'NA',
  ),
  Ongoinglist(
    imgurl: 'images/comingsoon.jpeg',
    title: 'XX XXXX',
    desc: 'NA',
  ),
  Ongoinglist(
    imgurl: 'images/comingsoon.jpeg',
    title: 'YYYY YY',
    desc: 'NA',
  ),
];

final List<ProductsList> productslist = [
  ProductsList(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
];

final List<String> imglist = [
  'images/aijpg.jpg',
  'images/elon.jpg',
  'images/jacky.jpeg',
  'images/jeff.jpg',
];


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  navigatetoproducts() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsPage()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        bottomOpacity: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('AA Studioz', style: GoogleFonts.dancingScript(fontSize: 24,fontWeight:FontWeight.w800,color: Color.fromRGBO(50, 75, 205, 1),))
      ),
      drawer: NavigationDrawer(),
      body: ListView(
        children: <Widget>[
          SingleChildScrollView(
        child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text(
                     'Good Afternoon,',
                     style: GoogleFonts.cairo(
                       fontSize: 17,color: Colors.grey , fontWeight: FontWeight.bold
                     ),
                   ),
                   SizedBox(height: 0.7,),
                   Text(
                     'Achuth',
                     style: GoogleFonts.cairo(
                       fontSize: 19,color: Colors.black, fontWeight: FontWeight.bold
                     ),
                   ),
                 ],
               ),
             ],
           ),
         ),
      ),
      SizedBox(height: 8),
      SingleChildScrollView(
        child: CarouselSlider(
          items: imglist
            .map((item) => Container(
              child: Center(
                child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                  width: 1000,
                ),
              ),
            ))
            .toList(),
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
        )
      ),
      SizedBox(height: 13,),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Top Rated',
              style: GoogleFonts.cairo(fontSize:20 , fontWeight: FontWeight.w600),
            ),
            GestureDetector(
              child: Text(
              'View all',
              style: GoogleFonts.cairo(fontSize: 16, color: Colors.blue),
              ),
              onTap: navigatetoproducts,
            )
          ],
        )
      ),
      SizedBox(height: 8),
      Container(
        height: 280,
        width: double.infinity,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10),
          scrollDirection: Axis.horizontal,
          itemCount: productslist.length,
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
                                image: AssetImage(productslist[index].imgurl!),
                                fit: BoxFit.cover, 
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text(
                              productslist[index].title!,
                              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10 , top:2),
                            child: Text(
                              productslist[index].desc!,
                              style: TextStyle(fontSize: 12),
                            )
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0,right:10.0,top:10),
                            child: Row(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '${productslist[index].rating}',
                                      style: GoogleFonts.cairo(color: Colors.black, fontWeight:FontWeight.bold)
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    )
                                  ]
                                )
                              ]
                            )
                          )
                        ],
                      ),
                    );
           },
        )
      ),
      SizedBox(height: 13,),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Pre-registration Apps',
              style: GoogleFonts.cairo(fontSize:18 , fontWeight: FontWeight.w600),
            ),
            GestureDetector(
              child: Text(
              'View all',
              style: GoogleFonts.cairo(fontSize: 16, color: Colors.blue),
              ),
              onTap: navigatetoproducts,
            )
          ],
        )
      ),
      SizedBox(height:8),
      Container(
        height: 290,
        width: double.infinity,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10),
          scrollDirection: Axis.horizontal,
          itemCount: ongoinglist.length,
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
                                image: AssetImage(ongoinglist[index].imgurl!),
                                fit: BoxFit.cover, 
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text(
                              ongoinglist[index].title!,
                              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10 , top:2),
                            child: Text(
                              ongoinglist[index].desc!,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    );
           },
        )
      ),
      SizedBox(height:18),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Card(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color.fromRGBO(50, 75, 205, 1)
            ),
            child: Swiper(
              itemCount: 1,
              itemBuilder: (context,index){
                return(
                  Row(
                    children: <Widget>[
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Democratizing the",
                              style: GoogleFonts.cairo(
                                color: Colors.white,
                                
                                fontSize: 19.0,
                              ),
                            ),
                            Text(
                              "Artificial Intelligence",
                              style: GoogleFonts.cairo(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ]
                        ),
                      ),
                      const SizedBox(width: 9.0),
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(50, 75, 205, 0.75),
                        radius:50,
                        child: Icon(
                         FontAwesomeIcons.doorOpen,
                         size: 30, 
                        )
                      ),
                      const SizedBox(width:20.0),
                    ],
                  )
                );
              },
            ),
          )
        )
      ),
      SizedBox(height: 20.0),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Social Media',
              style: GoogleFonts.cairo(fontSize:20 , fontWeight: FontWeight.w600),
            ),
          ],
        )
      ),
      SizedBox(height: 12.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            color: Colors.purple,
            icon: Icon(FontAwesomeIcons.discord),
            onPressed: (){},
            iconSize: 26,
          ),
          IconButton(
            color: Colors.blue,
            icon: Icon(FontAwesomeIcons.facebook),
            onPressed: (){},
            iconSize: 26,
          ),
          IconButton(
            color: Colors.red,
            icon: Icon(FontAwesomeIcons.youtube),
            iconSize: 26,
            onPressed: (){},
          ),
          IconButton(
            color: Colors.blue,
            icon: Icon(FontAwesomeIcons.linkedin),
            iconSize: 26,
            onPressed: (){},
          ),
          IconButton(
            color:Colors.brown,
            icon: Icon(FontAwesomeIcons.instagramSquare),
            iconSize: 26,
            onPressed: (){},
          ),
        ]
      ),
      SizedBox(height: 25),
    ],
      )    
    );
  }
}