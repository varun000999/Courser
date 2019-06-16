import 'package:flutter/material.dart';

class CourseDesc extends StatelessWidget{
  
  var para = 'Lorem ipsum dolor sit amet kdjflakjdf ladsk fdskj fakjs dflakj sdfla lfj adlf aldf aldjf aldsjf aldsj faldsj faljs dfjlads fjlfad sflj adslfj djlf adsjlf adl faljf adlj fajldf adsljf aldsj fajlds ';

  @override 
  Widget build(BuildContext context){
  
  final courseDescBar = AppBar(title:Text("Course Details", style: TextStyle(color: Colors.deepPurple),),
  backgroundColor: Colors.white,elevation: 0.0, leading: Icon(Icons.arrow_back, color: Colors.deepPurple,),);

  Widget titleGen(String title){
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          title,
          style: TextStyle(color: Colors.black, fontFamily: "Roboto", fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
  
  Widget valueGen(String value){
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          value,
          style: TextStyle(color: Colors.black, fontFamily: "Roboto", fontSize: 18.0, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  final courseHeading =  Align(
      alignment: Alignment.topCenter,
      child: Container(
        child: Text(
          "Programming for Everybody (Getting Started with Python)",
          style: TextStyle(color: Colors.black, fontFamily: "Roboto", fontSize: 32.0, fontWeight: FontWeight.bold),
        ),
      ),
    );

  // Return a picture according to type of course
  final courseImage = 0;

  // Type of Course
  final typeText = titleGen("Type");

  final typeTextValue = valueGen("Machine Learning");
  
  final courseType = Row(children: <Widget>[
    typeText,
    SizedBox(width: 145.0,),
    typeTextValue
  ],);

  // Price of course
  final priceText = titleGen("Price");
  
  final priceTextValue = valueGen("Free");  
  
  final coursePrice = Row(children: <Widget>[
    priceText,
    SizedBox(width: 145.0,),
    priceTextValue
  ],);

  // Pre Requisites
  // Price of course
  final preReqText = titleGen("PreRequisites");
  
  final preReqValue = valueGen("Python3, HTML, CSS, JS, Flask Framework");  

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
    likeButton,  SizedBox(width: 20.0,),titleGen("40K"), SizedBox(width: 100.0,),linkButton

  ],);

  // Reviews
  final reviewText = titleGen("Add a review");

  final reviewBox = TextField(decoration: InputDecoration(hintText:"Add your comment here....."));

  final reviewSubButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("SUBMIT")
      ),
    );
  
  final reviewContainer = new SizedBox(height: 1000.0, child: ListView.builder(itemCount:5, itemBuilder:(BuildContext context, index){ return Card(elevation: 5.0, child: Column(children: <Widget>[
    titleGen("username"),
    Text("adfk;fnad;fnad;ifbd;fiba;ifb;ailbef;ibaefi;eb;fiabefi;bea;ifbaei;f dalkbjflkjdbflkabjdsflkjbadsfkljabdsflkjabdslkfjbadslkjbfadlskjbfladksjbfdkjlasbfkjadbfkjadbfkjbaflkjbdfkljbadskjlfbasdlkjbfadskjlbfauelgruaieroqiboafb")
  ],),);}));

  final spacerCourseDesc = SizedBox(height: 20.0,);

  return Scaffold(
    appBar : courseDescBar,
    body: SingleChildScrollView(child:Padding(
    padding: EdgeInsets.all(10.0),
    child:Column(children: <Widget>[
    courseHeading,
    spacerCourseDesc,
    titleGen("Description"),
    valueGen(para),
    spacerCourseDesc,
    preReqText,
    preReqValue,
    spacerCourseDesc,
    courseType, 
    spacerCourseDesc,
    coursePrice,
    spacerCourseDesc,
    linkAndUpvote,
    spacerCourseDesc,
    reviewText,
    reviewBox,
    spacerCourseDesc,
    reviewSubButton,
    spacerCourseDesc,
    titleGen("Reviews"),
    reviewContainer
  ],),
  )));
  }
}