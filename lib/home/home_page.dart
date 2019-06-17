import 'package:flutter/material.dart';
import '../course-description/course_desc.dart';
import "../drawer/drawer.dart";

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    // Home page
    
    // App bar of home page 
    final topBar = AppBar(
      title: Text(
        'Courser',
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
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.deepPurple,
          ),
          onPressed: () {},
        )
      ],
    );

    // Generates grid of courses taking input the list of courses
    Widget CourseCards (List<String> itemList){
      return GridView.count(
          crossAxisCount: 2,
          children: List.generate(itemList.length, (index) {
            return GestureDetector(
              onTap:(){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CourseDesc()),);},
              child:Card(
              //color: Colors.black,
              child:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/python.jpg"),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),
        child:

              Align(
                  alignment: Alignment.bottomCenter,
                  child:Padding(
                      padding: EdgeInsets.all(0.5),
                      child:Text(
                        itemList[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12.0, color: Colors.white),
                      ))
              )
              ,
            )
      ));})
      );}
    
    // Adds title to grid of courses
    Widget TitleCourseCards (String listTitle, List<String> itemList){
      return Row(children: <Widget>[
        new Expanded(
            child: Column(children: <Widget>[
             
              SizedBox(height: 10.0),
              
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    listTitle,
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  )),
              SizedBox(
                height: 10.0,
              ),
              new Expanded(
                  child: CourseCards(itemList) ),
                  
            ]))
      ]);
    }

    // Replace with list of courses in interests
    List<String> itemList = [
      "Python for Everybody Specialization",
      "Programming for Everybody (Getting Started with Python)",
      "Python Data Structures",
      "Applied Data Science with Python Specialization",
      "Introduction to Data Science in Python",
      "Python 3 Programming Specialization",
    ];

    return Scaffold(
        key: _scaffoldKey,
        appBar: topBar,
        drawer : AppDrawer(),
        body: Padding(
            padding: EdgeInsets.all(15.0),
            child: TitleCourseCards("Recommendations for you", itemList)));
  }
}

