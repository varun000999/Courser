import 'package:flutter/material.dart';

// Generates a string title
/* Used at 
Add Courses page
Course Description page


*/
Widget titleGen(String title, double size, var weight, var tcolor) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      child: Text(
        title,
        style: TextStyle(
            color: tcolor,
            fontFamily: "Roboto",
            fontSize: size,
            fontWeight: weight),
      ),
    ),
  );
}

// Generates a description
/* Used at 
Course Description page



*/
Widget valueGen(String value) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      child: Text(
        value,
        style: TextStyle(
            color: Colors.black,
            fontFamily: "Roboto",
            fontSize: 18.0,
            fontWeight: FontWeight.w400),
      ),
    ),
  );
}

// Generates a Text Field
/* Used at 
Add Courses page



*/
Widget TFieldGen(String decoration) {
  return TextField(decoration: InputDecoration(hintText: decoration));
}

// Generates a Button
/* Used at 
Add Courses page



*/
Widget ButtonGen(BuildContext context, String buttonText, var textColor,
    var buttonColor) {
  return Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(10.0),
    color: buttonColor,
    child: MaterialButton(
      minWidth: MediaQuery
          .of(context)
          .size
          .width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {},
      child: Text(buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 21.0, color: textColor)),
    ),
  );
}

// Generates a Secondary app bar (App bars for pages other than home page)
/* Used at 
Add Courses page



*/
Widget SecondaryAppBar(String title, GlobalKey<ScaffoldState> _scaffoldKey) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(color: Colors.deepPurple),
      textAlign: TextAlign.left,
    ),
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 0.0,
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: Colors.deepPurple,
      ),
      onPressed: () => _scaffoldKey.currentState.openDrawer(),
    ),
  );
}
