import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';


class Quotes extends StatelessWidget {
 var quotes = [
   'You always pass failure on the way to success.',
   'Winning doesn’t always mean being first. Winning means you’re doing better than you’ve done before',
   'It always seems impossible until it is done',
   'Keep your face to the sunshine and you cannot see a shadow',
   'Happiness is the only thing that multiplies when you share it',
   'Live life to the fullest and focus on the postive',
   'Success is the sum of small efforts repeated day in and day out'
 ];
 List QuoteName = [
   'Mickey Rooney',
   'Bonnie Blair',
   'Nelson Mandela',
   'Hellen Keller',
   'Albert Schweitzer',
   'Matt Cameron',
   'Robert Collier'
 ];




 @override
Widget build(BuildContext context) {
   var random = Random();

 int randomNumber = random.nextInt(7);
return Scaffold(
appBar: AppBar(

title: Text('Happy Quote of the Day!',
style: TextStyle(
fontSize: 30,
color: Colors.white70,
),),

centerTitle: true,
backgroundColor: Colors.orangeAccent,
),
floatingActionButton: FloatingActionButton(
onPressed: (){
randomNumber = random.nextInt(7);
},
child: Text("New"),
backgroundColor: Colors.red,
),
backgroundColor: Colors.lightBlue[50],
body: Container(
margin: EdgeInsets.only(top: 100, left: 20, right: 20),
decoration: BoxDecoration(border: Border.all(color:Colors.black, width: 5), borderRadius: BorderRadius.circular(20.0)),
height: 300,
width: 400,
child: Column(
children: [
Text(quotes[randomNumber],
style:TextStyle(
fontSize: 30,
fontStyle: FontStyle.italic,
),
),

Text('- '+ QuoteName[randomNumber],
style:TextStyle(

fontSize: 20,
),
),

],
),
),


);
}
}
