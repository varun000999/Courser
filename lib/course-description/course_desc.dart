import 'package:flutter/material.dart';

class CourseDesc extends StatelessWidget{
  
  var para = 'Lorem ipsum dolor sit amet kdjflakjdf ladsk fdskj fakjs dflakj sdfla lfj adlf aldf aldjf aldsjf aldsj faldsj faljs dfjlads fjlfad sflj adslfj djlf adsjlf adl faljf adlj fajldf adsljf aldsj fajlds ';

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
  
  // Type of Course
  
  final typeText = Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          "Type",
           style: TextStyle(color: Colors.black, fontFamily: "Roboto", fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
    );

  final typeTextValue = Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          "Machine Learning",
          style: TextStyle(color: Colors.black, fontFamily: "Roboto", fontSize: 18.0, fontWeight: FontWeight.w400),
        ),
      ),
    );  
  
  final courseType = Row(children: <Widget>[
    typeText,
    SizedBox(width: 145.0,),
    typeTextValue
  ],);

  // Price of course
  final priceText = Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          "Price",
          style: TextStyle(color: Colors.black, fontFamily: "Roboto", fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  
  final priceTextValue = Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          "Free",
          style: TextStyle(color: Colors.black, fontFamily: "Roboto", fontSize: 18.0, fontWeight: FontWeight.w400),
        ),
      ),
    );  
  
  final coursePrice = Row(children: <Widget>[
    priceText,
    SizedBox(width: 145.0,),
    priceTextValue
  ],);
  
   final linkButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("LINK",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 21.0,color: Colors.deepPurple)),
      ),
    );

  final likeButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Icon(Icons.thumb_up, color: Colors.grey,)
      ),
    );

  final linkAndUpvote = Row(children: <Widget>[
    linkButton, SizedBox(width: 100.0,),likeButton

  ],);

  // Reviews
  final reviewText = Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          "Reviews",
          style: TextStyle(color: Colors.black, fontFamily: "Roboto", fontSize: 18.0, fontWeight: FontWeight.bold),
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
    courseDescPara,
    spacerCourseDesc,
    courseType, 
    spacerCourseDesc,
    coursePrice,
    spacerCourseDesc,
    linkAndUpvote,
    spacerCourseDesc,
    reviewText
  ],),
  ));
  }
}