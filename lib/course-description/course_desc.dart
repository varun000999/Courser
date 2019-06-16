import 'package:flutter/material.dart';

class CourseDesc extends StatelessWidget{
  
  var para = 'Lorem ipsum dolor sit amet';

  @override 
  Widget build(BuildContext context){
  
  final courseDescBar = AppBar(backgroundColor: Colors.white,);
  
  final courseHeading =  Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          "Machine Learning in 3 months",
          style: TextStyle(color: Colors.black, fontFamily: "Roboto", fontSize: 32.0, fontWeight: FontWeight.bold),
        ),
      ),
    );

  // Return a picture according to type of course
  final courseImage = 0;

  //Course Description text
  final courseDescText =  Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          "Description",
          style: TextStyle(color: Colors.black, fontFamily: "Roboto", fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
    );

  final courseDescPara =  Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          para,
          style: TextStyle(color: Colors.black, fontFamily: "Roboto", fontSize: 18.0, fontWeight: FontWeight.w400),
        ),
      ),
    );
  
  final spacerCourseDesc = SizedBox(height: 20.0,);

  return Scaffold(
    appBar : courseDescBar,
    body: Padding(
    padding: EdgeInsets.all(10.0),
    child:Column(children: <Widget>[
    courseHeading,
    spacerCourseDesc,
    courseDescText,
    courseDescPara
  ],),
  ));
  }
}