import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webster/models/students.dart';
import 'package:webster/students_detail.dart';
import 'package:webster/main_drawer.dart';
class ListStudentsPage extends StatefulWidget {
  @override
  _ListStudentsPageState createState() => _ListStudentsPageState();
}

class _ListStudentsPageState extends State<ListStudentsPage> {
  var studentspqy=allStudents;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF6ED),

      appBar: AppBar(
        backgroundColor: Color(0xFF233355),
        title: Text(
          'Our Team',
          style: GoogleFonts.tinos(
              fontWeight: FontWeight.w400,
              fontSize: 30,
              color: Color(0XFFFEFEFE)
          ),
        ),
        centerTitle: true,
        // backgroundColor: Colors.indigo,
      ),
     // drawer: MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: ListView(
          children: <Widget>[


            //SizedBox(height: 50),
            Container(

              //height: MediaQuery.of(context).size.height - 200.0,
              height: MediaQuery.of(context).size.height - 90.0,
              child: GridView.count(

                primary: false,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                crossAxisCount: 2,
                childAspectRatio: 1,
                children: <Widget>[
                  ...studentspqy.map((e) {
                    return buildStudentsGrid(e);
                  }).toList()
                ],
              ),

            ),


          ],

        ),
      ),

    );
  }
  buildStudentsGrid(Students student) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>StudentDetail(selectedStudent: student)
          ));
        },
        child: Stack(
          children: <Widget>[
           // Center(
            //  child: Container(
             //     height: 200.0, width: 150.0, color: Colors.transparent),
           // ),
            Positioned(
                left: 38.0,
                top: 0.0,
                child: Container(
                    height: 170.0,
                    width: 120.0,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 7.0,
                          color: Colors.grey.withOpacity(0.75),
                          offset: Offset(5, 25),
                          spreadRadius: 12.0)
                    ]))),
            Positioned(
              left: 30,
              top: 5,
              child: Container(
                height: 190,
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xFFFAF6ED),
                  borderRadius: BorderRadius.circular(15.0),
                ),

              ),
            ),



            Positioned(
                left: 45.0,
                top: 15.0,
                child: Hero(
                    tag: student.studentImage,
                    child: Container(
                        height: 150.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(student.studentImage),
                                fit: BoxFit.cover))))),
            Positioned(
                left: 58.0,
                top: 170.0,

                child:  Center(
                  child: Text(student.studentName,
                      style: GoogleFonts.sourceSansPro(fontSize: 16.0)),
                ),

            )

          ],
        ));
  }
}

