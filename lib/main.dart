import 'package:flutter/material.dart';
import 'package:messaging_app/screen/onlinescreen.dart';
import '../screen/home_screen.dart';
 void main() => runApp(Myapp());
 
 class Myapp extends StatelessWidget {
   const Myapp({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Messaging app',
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         colorScheme: ColorScheme.fromSwatch(
             primarySwatch: Colors.red).copyWith(
             secondary: Color.fromRGBO(254,248,232,1)),
       ),
       //home is for widgets!
       home:homescreen(),
     );
   }
 }
 