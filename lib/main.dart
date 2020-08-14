import 'package:flutter/material.dart';
import 'package:webster/about_us.dart';
import 'package:webster/contact.dart';
import 'package:webster/list_students.dart';
import 'package:webster/students_detail.dart';



void main() =>runApp(MyApp(


));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/' ,
      routes: {
        '/': (context) => AboutUS(),
        '/home': (context) => ListStudentsPage(),
        '/location': (context) => StudentDetail(),
        '/contactUs': (context) => Contact(),

      },

      // home: AboutUS(),

    );
  }
}