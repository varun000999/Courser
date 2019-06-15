import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: Make home page

    final topBar = AppBar(
      title: Text(
        'Courser',
        style: TextStyle(color: Colors.purple),
        textAlign: TextAlign.left,
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0.0,
      leading: Icon(
        Icons.menu,
        color: Colors.purple,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.purple,
          ),
          onPressed: () {},
        )
      ],
    );

    Widget CourseCards (List<String> itemList){
      return GridView.count(
          crossAxisCount: 2,
          children: List.generate(itemList.length, (index) {
            return Card(
              color: Colors.black,
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
            );
          }));
    }

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

    List<String> itemList = [
      "Python for Everybody Specialization",
      "Programming for Everybody (Getting Started with Python)",
      "Python Data Structures",
      "Applied Data Science with Python Specialization",
      "Introduction to Data Science in Python",
      "Python 3 Programming Specialization",
    ];

    return Scaffold(
        appBar: topBar,
        body: Padding(
            padding: EdgeInsets.all(15.0),
            child: TitleCourseCards("Recommendations for you", itemList)));
  }
}