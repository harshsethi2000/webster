import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:contactus/contactus.dart';
import 'package:webster/models/students.dart';
import 'package:webster/contact.dart';
import 'package:webster/about_us.dart';

class StudentDetail extends StatefulWidget {
  final Students selectedStudent;

  StudentDetail({this.selectedStudent});

  @override
  _StudentDetailState createState() => _StudentDetailState();
}

class _StudentDetailState extends State<StudentDetail> {

  @override
  Widget build(BuildContext context) {
    var  ScreenHeight =MediaQuery.of(context).size.height;
    var ScreenWidth =MediaQuery.of(context).size.width;
    return Scaffold(
      body:
      Stack(
        children: <Widget>[
         Container(
           height: ScreenHeight,
           width: ScreenWidth,
         ),
          Container(
            height: ScreenHeight-ScreenHeight/3,
            width: ScreenWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.selectedStudent.studentImage),
                fit: BoxFit.cover
              ),
            ),
          ),
          Positioned(
            top: ScreenHeight-ScreenHeight/3-25,
            child: Container(
              padding: EdgeInsets.only(left: 20),
              height: ScreenHeight/3+25,
              width: ScreenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 25),
                  Text(
                    widget.selectedStudent.studentName,
                    style: GoogleFonts.tinos(
                      fontSize: 25,

                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),
                  Text(
                    widget.selectedStudent.studentSkill,
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF5E5854),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.selectedStudent.studentIntro,
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF201F1C),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: <Widget>[
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '2',
                            style: GoogleFonts.tinos(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                          )
                          ),
                          Text(
                            'Semester',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5E5854),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                              widget.selectedStudent.studentProject,
                              style: GoogleFonts.tinos(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              )
                          ),
                          Text(
                            'Project',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5E5854),
                            ),
                          ),

                        ],
                      ),


                    ]
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFFAF6ED),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
              ),

            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: FloatingActionButton(
                onPressed: (){

                },
                child:Icon(Icons.contact_mail),
                backgroundColor:Color(0xFF294261) ,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 40, 30, 0),
              //padding: EdgeInsets.only(left: 15,right: 30),
              child: Container(
                height: 40,
                  width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFa4B2AE),
                ),
                child: Center(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back,size: 20,color: Colors.white,),
                    onPressed: (){
                      Navigator.pop(context);

                    },
                  ),
                ),
              ),
            ),

          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 40, 10, 0),
              //padding: EdgeInsets.only(left: 15,right: 30),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFa4B2AE),
                ),
                child: Center(
                  child: IconButton(
                    icon: Icon(Icons.home,size: 20,color: Colors.white,),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>AboutUS()
                      ));
                    },
                  ),
                ),
              ),
            ),

          )
        ],
      )


    );
  }
}
