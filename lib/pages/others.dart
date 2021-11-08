import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Category{
  final String name;
  int? id;
  dynamic? icon;
  Category(this.id, this.name, {this.icon});
}

final List<Category> categories = [
  Category(1, "Settings" , icon: Icons.settings ),
  Category(2, "Podcasts" , icon: FontAwesomeIcons.video),
  Category(3, "Feedback", icon: FontAwesomeIcons.comment),
  Category(4, "Contact us" , icon: FontAwesomeIcons.addressCard),
  Category(5, "AA's Gallery" , icon: FontAwesomeIcons.images),
  Category(6, "Analytics", icon: FontAwesomeIcons.chartBar),
];


class OthersPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Others' , style: GoogleFonts.dancingScript(fontSize: 26,),),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(50, 75, 205, 1),
          elevation: 0,
        ),
        body: Stack(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(50,75, 205, 1),
                ),
                height: 200,
              ),
            ),
            CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 8),
                    child: Text('Explore all other features ', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 16)),
                  )
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(16.0),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      _buildOtherItems,
                      childCount: categories.length,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );

      Widget _buildOtherItems(BuildContext context, int index) {
    Category category = categories[index];
    return MaterialButton(
      elevation: 1.0,
      highlightElevation: 1.0,
      onPressed: () => {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.grey.shade800,
      textColor: Colors.white70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if(category.icon != null)
            Icon(category.icon),
          if(category.icon != null)
            SizedBox(height: 5.0),
          Text(
            category.name,
            textAlign: TextAlign.center,
            maxLines: 3,),
        ],
      ),
    );
  }
 
}