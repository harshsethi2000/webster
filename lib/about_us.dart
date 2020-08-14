import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webster/list_students.dart';
import 'main_drawer.dart';
class AboutUS extends StatefulWidget {
  @override
  _AboutUSState createState() => _AboutUSState();
}

class _AboutUSState extends State<AboutUS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF233355),
      appBar: AppBar(
        title: Text(
          'Webster',
          style: GoogleFonts.tinos(
              fontWeight: FontWeight.w400,
              fontSize: 30,
              color: Color(0XFFFEFEFE)
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF233355),

      ),
      drawer: MainDrawer(),

      body:
          ListView(
            children: <Widget>[
        Column(

          children: <Widget>[
            SizedBox(height: 20,),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Eat',
                  style: GoogleFonts.tinos(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: Color(0XFFFEFEFE)
                  ),
                ),
                Text(
                  'Sleep',
                  style: GoogleFonts.tinos(
                      fontWeight: FontWeight.w400,
                       color: Color(0XFFFEFEFE),
                      fontSize: 25,
                  ),
                ),
                Text(
                  '<Code/>',
                  style: GoogleFonts.tinos(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: Color(0XFFFEFEFE)
                  ),
                ),
                Text(
                  'Repeat',
                  style: GoogleFonts.tinos(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: Color(0XFFFEFEFE)
                  ),
                ),
              ],
            ),
           SizedBox(height: 30,),
        Text(
          '^^^^^^^',
          style: GoogleFonts.sourceSansPro(
            fontSize: 20,
            fontWeight: FontWeight.w400,
             color: Color(0xFF5E5854),
          ),
        ),
            SizedBox(height: 30,),
            Container(
              width: 380,


              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height:20),
                  Text(
                    'Programming Skills are essential tools',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      //color: Color(0XFFFEFEFE),
                        color: Color(0XFFFEFEFE)
                    ),

                  ),
                  Text(
                    'that can be incorporated into ',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                    ),

                  ),
                  Text(
                    'various field ',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFFFEFEFE)
                    ),

                  ),
                  SizedBox(height: 40,),
                  Text(
                    'Hence it becomes absolutely essential',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                    ),

                  ),
                  Text(
                    'to equip YOUNG MINDS',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                    ),

                  ),
                  Text(
                    'With such skills',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                    ),

                  ),
                  SizedBox(height: 40,),

                  Text(
                    'WEBSTER is an Coding Club aims to',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                    ),
                  ),
                  Text(
                    'establish coding culture on',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                    ),
                  ),
                  Text(
                    'UEC campus',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                    ),
                  ),
                  SizedBox(height: 40,),

                  Text(
                    'Reaching every student passionate ',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                    ),
                  ),
                  Text(
                    'about Coding',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFEFEFE)
                    ),
                  ),

                  IconButton(
                    icon: Icon(Icons.arrow_back,size: 20,color: Colors.white,),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>ListStudentsPage()
                      ));
                    },
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xFF294261),
               // color: Color(0xff5e9bd5),

                borderRadius: BorderRadius.circular(15.0),
              ),
            )



          ],
        ),


    ]
          )




    );
  }
}
