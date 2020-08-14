import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webster/models/students.dart';
import 'package:webster/students_detail.dart';
import 'package:contactus/contactus.dart';
import 'main_drawer.dart';
 class Contact  extends StatefulWidget {
   final Students selectedStudent;
   Contact({this.selectedStudent});



  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor:   Color(0xFF294261) ,
       appBar: AppBar(
         backgroundColor: Color(0xFF233355),
         title: Text(
           'Contact Us',
           style: GoogleFonts.tinos(
               fontWeight: FontWeight.w400,
               fontSize: 30,
               color: Color(0XFFFEFEFE)
           ),
         ),
         centerTitle: true,
         // backgroundColor: Colors.indigo,
       ),
       //drawer: MainDrawer(),
     body:
     Padding(
       padding: const EdgeInsets.only(top: 40),
       child: ContactUs(
         cardColor: Colors.white,
         textColor: Colors.black87,
         logo: AssetImage('assets/webster.jpg'),
         email: 'websterUEC@gmail.com',
         companyName: '',
         companyColor: Colors.white,
         phoneNumber: '+919406860854',
         website: 'https://www.thinkingmachines.in/',
         linkedinURL: 'https://www.linkedin.com/in/harsh-sethi-11bb18190/',
         tagLine: 'Webster',
         taglineColor: Colors.white,

       ),
     ),

     );
   }
}
