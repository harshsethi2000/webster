import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webster/list_students.dart';
import 'package:webster/about_us.dart';
import 'contact.dart';
import 'package:webster/join_us.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:
     Column(
       children: <Widget>[
         Container(
           width: double.infinity,
           padding: EdgeInsets.all(20),
           child: Center(
             child:
             Column(
               children: <Widget>[
                 Container(
                   margin: EdgeInsets.only(top:40),
                   width: 100,
                   height: 100,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                       //color: Color(0xFF294261),
                     image: DecorationImage(image:AssetImage('assets/webster.jpg'),
                     fit: BoxFit.fill
                     )
                   ),
                 ),
                 SizedBox(height: 20,),
                 Text(
                   'Webster',
                   style: GoogleFonts.tinos(
                       fontWeight: FontWeight.w400,
                       fontSize: 30,
                       color: Color(0XFFFEFEFE)
                   ),
                 ),
                 SizedBox(height: 10,),
               ],
             ),
           ),
           decoration: BoxDecoration(
             color: Color(0xFF294261),
             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
           ),

         ),
         SizedBox(height:10),
         ListTile(
           leading: Icon(Icons.home,),
           title: Text(
            'Home',
             style: GoogleFonts.tinos(
               fontSize: 20,
               fontWeight: FontWeight.w500,
             ),
           ),
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(
                 builder: (context) =>AboutUS()
             ));

           },

         ),
         ListTile(
           leading: Icon(Icons.group,),
           title: Text(
             'Our Team',
             style: GoogleFonts.tinos(
               fontSize: 20,
               fontWeight: FontWeight.w500,
             ),
           ),
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(
                 builder: (context) =>ListStudentsPage()
             ));

           },

         ),
         ListTile(
           leading: Icon(Icons.group_add,),
           title: Text(
             'Join Us',
             style: GoogleFonts.tinos(
               fontSize: 20,
               fontWeight: FontWeight.w500,
             ),
           ),
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(
                 builder: (context) =>JoinUs()
             ));

           },

         ),
         ListTile(
           leading: Icon(Icons.contact_mail,),
           title: Text(
             'Contact Us',
             style: GoogleFonts.tinos(
               fontSize: 20,
               fontWeight: FontWeight.w500,
             ),
           ),
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(
                 builder: (context) =>Contact()
             ));
           },
         ),
       ],
     ),
    );
  }
}
