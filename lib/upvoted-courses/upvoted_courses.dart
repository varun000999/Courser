import 'package:flutter/material.dart';
import '../drawer/drawer.dart';
import '../BasicUI/basic_ui.dart';

class UpvCourses extends StatefulWidget {
  UpvCourses({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _UpvCourseState createState() => _UpvCourseState();
}

class _UpvCourseState extends State<UpvCourses> {
  // TODO : Courses upvoted by user
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    
    // Appbar of added courses page
    final topBar = SecondaryAppBar('Courses upvoted by you', _scaffoldKey);

    

    return Scaffold(
        key: _scaffoldKey,
        appBar: topBar,
        drawer: AppDrawer(),
        );
  }
}
