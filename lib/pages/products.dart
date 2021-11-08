import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Others {
  String? imgurl;
  String? title;
  String? desc;
  double? rating;

  Others({this.imgurl, this.desc, this.rating, this.title});
}

class RecommendList {
  String? imgurl;
  String? title;
  String? desc;
  double? rating;

  RecommendList({this.imgurl, this.desc, this.rating, this.title});
}

class DataScience {
  String? imgurl;
  String? title;
  String? desc;
  double? rating;

  DataScience({this.imgurl, this.desc, this.rating, this.title});
}

class ComputerVision {
  String? imgurl;
  String? title;
  String? desc;
  double? rating;

  ComputerVision({this.imgurl, this.desc, this.rating, this.title});
}

class ArGames {
  String? imgurl;
  String? title;
  String? desc;
  double? rating;

  ArGames({this.imgurl, this.desc, this.rating, this.title});
}

final List<DataScience> datascience = [
  DataScience(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
  DataScience(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
  DataScience(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
];
final List<RecommendList> recommendsforyou = [
  RecommendList(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
  RecommendList(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
  RecommendList(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
];
final List<ComputerVision> cvlist = [
  ComputerVision(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
  ComputerVision(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
  ComputerVision(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
];
final List<Others> otherslist = [
  Others(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
  Others(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
  Others(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
];
final List<ArGames> arlist = [
  ArGames(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
  ArGames(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
  ArGames(
    imgurl: 'images/v2c.jpg',
    title: 'Vision2Code',
    desc: 'Computer Vision based webapp',
    rating: 4.5,
  ),
];

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.all(Radius.circular(28)),
              child: TextField(
                controller: TextEditingController(text: "Search here..."),
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                    suffixIcon: Material(
                        elevation: 0,
                        borderRadius: BorderRadius.all(Radius.circular(28)),
                        child: Icon(Icons.search)),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 24, vertical: 12)),
              ),
            ),
          ),
          SizedBox(height: 14),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Recommended for you',
                    style: GoogleFonts.cairo(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              )),
          SizedBox(height: 12),
          Container(
              height: 280,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: recommendsforyou.length,
                itemBuilder: (BuildContext context, index) {
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
                            image: DecorationImage(
                              image:
                                  AssetImage(recommendsforyou[index].imgurl!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            recommendsforyou[index].title!,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 10, top: 2),
                            child: Text(
                              recommendsforyou[index].desc!,
                              style: TextStyle(fontSize: 12),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 10),
                            child: Row(children: <Widget>[
                              Row(children: <Widget>[
                                Text('${recommendsforyou[index].rating}',
                                    style: GoogleFonts.cairo(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                )
                              ])
                            ]))
                      ],
                    ),
                  );
                },
              )),
          SizedBox(height: 14),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Data Science',
                    style: GoogleFonts.cairo(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              )),
          SizedBox(height: 12),
          Container(
              height: 280,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: datascience.length,
                itemBuilder: (BuildContext context, index) {
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
                            image: DecorationImage(
                              image: AssetImage(datascience[index].imgurl!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            datascience[index].title!,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 10, top: 2),
                            child: Text(
                              datascience[index].desc!,
                              style: TextStyle(fontSize: 12),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 10),
                            child: Row(children: <Widget>[
                              Row(children: <Widget>[
                                Text('${datascience[index].rating}',
                                    style: GoogleFonts.cairo(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                )
                              ])
                            ]))
                      ],
                    ),
                  );
                },
              )),
          SizedBox(height: 14),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Computer Vision',
                    style: GoogleFonts.cairo(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              )),
          SizedBox(height: 12),
          Container(
              height: 280,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: cvlist.length,
                itemBuilder: (BuildContext context, index) {
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
                            image: DecorationImage(
                              image: AssetImage(cvlist[index].imgurl!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            cvlist[index].title!,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 10, top: 2),
                            child: Text(
                              cvlist[index].desc!,
                              style: TextStyle(fontSize: 12),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 10),
                            child: Row(children: <Widget>[
                              Row(children: <Widget>[
                                Text('${cvlist[index].rating}',
                                    style: GoogleFonts.cairo(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                )
                              ])
                            ]))
                      ],
                    ),
                  );
                },
              )),
          SizedBox(height: 12),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'AR Games',
                    style: GoogleFonts.cairo(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              )),
          SizedBox(height: 12),
          Container(
              height: 280,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: arlist.length,
                itemBuilder: (BuildContext context, index) {
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
                            image: DecorationImage(
                              image: AssetImage(arlist[index].imgurl!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            arlist[index].title!,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 10, top: 2),
                            child: Text(
                              arlist[index].desc!,
                              style: TextStyle(fontSize: 12),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 10),
                            child: Row(children: <Widget>[
                              Row(children: <Widget>[
                                Text('${arlist[index].rating}',
                                    style: GoogleFonts.cairo(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                )
                              ])
                            ]))
                      ],
                    ),
                  );
                },
              )),
              SizedBox(height: 12),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Others',
                    style: GoogleFonts.cairo(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              )),
          SizedBox(height: 12),
          Container(
        height: 280,
        width: double.infinity,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10),
          scrollDirection: Axis.horizontal,
          itemCount: otherslist.length,
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
                                image: AssetImage(otherslist[index].imgurl!),
                                fit: BoxFit.cover, 
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text(
                              otherslist[index].title!,
                              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10 , top:2),
                            child: Text(
                              otherslist[index].desc!,
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
                                      '${otherslist[index].rating}',
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
      SizedBox(height: 12),
        ],
      ));
}
