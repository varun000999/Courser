import 'package:flutter/material.dart'; 
 
Widget titleGen(String title, double size, var weight, var tcolor){
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          title,
          style: TextStyle(color: tcolor, fontFamily: "Roboto", fontSize: size, fontWeight: weight),
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

Widget TFieldGen(String decoration){
  return TextField(decoration: InputDecoration(hintText:decoration));
}

Widget ButtonGen(BuildContext context, String buttonText, var textColor, var buttonColor)  {
  return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: buttonColor,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text(buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 21.0,color: textColor)),
      ),
    );
}

Widget SecondaryAppBar(String title,  GlobalKey<ScaffoldState> _scaffoldKey){
  return  AppBar(
      title: Text(
        title,
        style: TextStyle(color: Colors.deepPurple),
        textAlign: TextAlign.left,
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0.0,
      leading: IconButton(icon:Icon(
        Icons.menu,
        color: Colors.deepPurple,
      ),
      onPressed: () => _scaffoldKey.currentState.openDrawer(),),
    );
}