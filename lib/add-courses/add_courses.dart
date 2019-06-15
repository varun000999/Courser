import 'package:flutter/material.dart';

class AddCourses extends StatefulWidget {
  AddCourses({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AddCourseState createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourses> {
  @override
  Widget build(BuildContext context) {
    // TODO: Make add courses page

    final topBar = AppBar(
      title: Text(
        'Add new course',
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
    );

    return Scaffold(
        appBar: topBar,
        body: Padding(
            padding: EdgeInsets.all(15.0),
        ));
  }
}