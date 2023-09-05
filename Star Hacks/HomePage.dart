import 'package:flutter/material.dart';

import 'calnedar.dart';
import 'quotes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(
       // Define the default brightness and colors.
       brightness: Brightness.dark,
       primaryColor: Color(0xFF32213A), //dark blue
       accentColor: Color(0xFFE6DEB4), //light yello

       // Define the default font family.

       // Define the default TextTheme. Use this to specify the default
       // text styling for headlines, titles, bodies of text, and more.
       textTheme: TextTheme(
         headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
         headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
         bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
       ),
     ),
     title: 'Welcome Alex!',
     home: Scaffold(
       appBar: PreferredSize(
         preferredSize: Size.fromHeight(kToolbarHeight),
         child: ClipRRect(
           clipBehavior: Clip.antiAlias,
           borderRadius: BorderRadius.only(
               bottomLeft: Radius.circular(20.0),
               bottomRight: Radius.circular(20.0)),
           child: AppBar(
             title: Text('Welcome Alex!'),
           ),
         ),
       ),
       backgroundColor: Color(0xFFE6DEB4),
       drawer: Container(
         width: 150,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.vertical(
             top: Radius.circular(30),
           ),
         ),
         child: Drawer(
           child: Container(
             color: Color(0xFF32213A),
             child: ListView(
               // Important: Remove any padding from the ListView.
               padding: EdgeInsets.zero,
               children: <Widget>[
                 Container(
                   height: 100,
                   child: DrawerHeader(
                     child: Text(
                       'Self Joy',
                       style: TextStyle(
                         fontSize: 30,
                         color: Colors.black,
                       ),
                     ),
                     decoration: BoxDecoration(
                       color: Color(0xFFE6DEB4),
                     ),
                   ),
                 ),
                 ListTile(
                   title: Text(
                     'Calendar',
                     style: TextStyle(fontSize: 20),
                   ),
                   onTap: () {
                     // Update the state of the app.
                     // ...
                   },
                 ),
                 ListTile(
                   title: Text(
                     'Feel Better :)',
                     style: TextStyle(fontSize: 20),
                   ),
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context )=> Quotes()));
                     // Update the state of the app.
                     // ...
                   },
                 ),
                 ListTile(
                   title: Text(
                     'Support',
                     style: TextStyle(fontSize: 20),
                   ),
                   onTap: () {
                     // Update the state of the app.
                     // ...
                   },
                 ),
               ],
             ),
           ),
         ),
       ),
       body: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.vertical(
             top: Radius.circular(30),
           ),
         ),
         child: ListView(
           children: [
             SizedBox(height: 30),
             Container(
               decoration: BoxDecoration(
                   color: Color(0xFFE6DEB4),
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(40),
                     topRight: Radius.circular(40),
                   ),
                   boxShadow: [
                     BoxShadow(
                         color: Colors.black.withOpacity(0.4),
                         blurRadius: 8.0,
                         offset: Offset(0, -5))
                   ]),
               height: 600,
               alignment: Alignment.center,
               child: Calendar(),
             ),
             Container(
               color: Color(0xFFE6DEB4),
               height: 150,
               alignment: Alignment.center,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(20),
                         ),
                         height: 115,
                         width: 200,
                         alignment: Alignment.center,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text(
                               'October 21st',
                               style: TextStyle(
                                   color: Colors.black, fontSize: 30),
                             ),
                             Container(
                               child: Text(
                                 '2020',
                                 style: TextStyle(
                                     fontSize: 25, color: Colors.black),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         alignment: Alignment.center,
                         child: Text(
                           'How was your day today?',
                           style: TextStyle(color: Colors.black, fontSize: 20),
                         ),
                       ),
                       Container(
                         child: Text('10/10',
                             style:
                                 TextStyle(fontSize: 60, color: Colors.black)),
                       ),
                     ],
                   ),
                 ],
               ),
             ),
             Container(
               decoration: BoxDecoration(
                   color: Color(0xFFE6DEB4),
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(40),
                     bottomRight: Radius.circular(40),
                   ),
                   boxShadow: [
                     BoxShadow(
                         color: Colors.black.withOpacity(0.4),
                         blurRadius: 8.0,
                         offset: Offset(0, 5))
                   ]),
               height: 375,
               alignment: Alignment.center,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   SizedBox(height: 60),
                   Align(
                     alignment: Alignment.centerLeft,
                     child: Text(
                       'Write a Journal About your day, especially',
                       style: TextStyle(color: Colors.black),
                     ),
                   ),
                   Container(
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),
                     ),
                     height: 200,
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: TextField(
                         maxLines: null,
                         style: TextStyle(color: Colors.black),
                         decoration: InputDecoration(
                           fillColor: Colors.black,
                           border: OutlineInputBorder(),
                           labelText:
                               'Write a Journal About your day, especially',
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ],
         ),
       ),
     ),
   );
 }
}
