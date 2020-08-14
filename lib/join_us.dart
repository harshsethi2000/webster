import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class JoinUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF294261),
      appBar: AppBar(
        title: Text(
          'Join Us',
          style: GoogleFonts.tinos(
              fontWeight: FontWeight.w400,
              fontSize: 30,
              color: Color(0XFFFEFEFE)
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF233355),

      ),
      //drawer: MainDrawer(),
      body:

        ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20),
              height:220,
              child: PageView(
                controller: PageController(viewportFraction: 0.8),
                scrollDirection: Axis.horizontal,
                pageSnapping: true,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),

                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.redAccent,
                      image: DecorationImage(
                          image: AssetImage('assets/code3.jpg'),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      image: DecorationImage(
                          image: AssetImage('assets/code1.webp'),
                          fit: BoxFit.cover
                      ),
                    ),

                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    //color: Colors.greenAccent,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      image: DecorationImage(
                          image: AssetImage('assets/webster2.jpg'),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 70,),
                Text(
                  'JOIN US',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'WHY JOIN US',
                  style: GoogleFonts.tinos(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      letterSpacing: 2,
                      color: Colors.yellowAccent
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  'Learn with Webster we believe people',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      //color: Color(0XFFFEFEFE),
                      color: Color(0XFFFEFEFE)
                  ),

                ),
                Text(
                  'here will be foundation of',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                  ),

                ),
                Text(
                  'great coders',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                  ),

                ),
                SizedBox(height: 20,),
                Text(
                  'We learn together and help each other ',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      //color: Color(0XFFFEFEFE),
                      color: Color(0XFFFEFEFE)
                  ),

                ),
                Text(
                  'so that all people of Webster grow',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                  ),

                ),
                Text(
                  'with each other.',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                  ),

                ),
                SizedBox(height: 60,),
                Text(
                  'Be a part of  Webster',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                  ),

                ),
                SizedBox(height: 100,),
                Text(
                  'INTERESTED',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'READY TO JOIN?',
                  style: GoogleFonts.tinos(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      letterSpacing: 2,
                      color: Colors.yellowAccent
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  'We are a team of technical learners ',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                  ),
                ),
                Text(
                  'looking for learners like you',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                  ),
                ),
                Text(
                  'to join us',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                  ),
                ),
                SizedBox(height: 50,),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    filled: true,
                    fillColor: Color(0xFFFAF6ED),
                    border: OutlineInputBorder(
                      //borderRadius: BorderRadius.circular(4.0),

                    ),

                    hintText: 'Enter Your email',
                    hintStyle: GoogleFonts.sourceSansPro(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,

                    ),
                    suffixIcon: FlatButton(
                      onPressed: () {},
                      child: Text('Join Now',
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,

                      ),
                      ),
                      //color: Colors.yellowAccent,

                    ),
                  ),
                  scrollPadding: EdgeInsets.all(16),
                ),
                SizedBox(height: 50,),

              ],
            ),
          ],
        ),

    );
  }
}
