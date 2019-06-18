import 'package:courser/home/home_page.dart';
import 'package:flutter/material.dart';
import "../add-courses/add_courses.dart";

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
              accountName: Text('Avnish Pal'),
              accountEmail: Text('avnishnish07@gmail.com')),
          new ListTile(
            title: new Text('Home '),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext) => new MyHomePage()));
            },
          ),
          new ListTile(
            title: new Text('Add a new course'),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext) => new AddCourses()));
            },
          )
        ],
      ),
    );
  }
}
