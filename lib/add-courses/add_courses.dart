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
    // Add courses page

    // Appbar of add courses page
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

    // Course Name
    final cnameText = Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          "Course Name",
          style: TextStyle(color: Colors.grey, fontFamily: "Roboto", fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ),
    );

    final cname = TextField();

    //Course Platform
    final platformText = Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          "Platform",
          style: TextStyle(color: Colors.grey, fontFamily: "Roboto", fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ),
    );

    final platform = TextField();

    // Padding
    final spacer = SizedBox(height: 10.0);

    // Prerequisites
    final prereqText = Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          "Prerequisites",
          style: TextStyle(color: Colors.grey, fontFamily: "Roboto", fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ),
    );

    final prereq = TextField();

    // Link
    final linkText = Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          "Link to Course",
          style: TextStyle(color: Colors.grey, fontFamily: "Roboto", fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ),
    );

    final link = TextField();

    // Link
    final descText = Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child: Text(
          "Description",
          style: TextStyle(color: Colors.grey, fontFamily: "Roboto", fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ),
    );

    final desc = TextField();

    // Submit button
    final sButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.deepPurple,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("SUBMIT",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 21.0,color: Colors.white)),
      ),
    );

    // Type of Course
    String dropDownValue = 'Web Development';
    final type = DropdownButton<String>(
        value: dropDownValue,
        onChanged:(String newValue) {
          setState(() {
            dropDownValue = newValue;
          });
        },
        items: <String>['Web Development', 'Java', 'Python', 'Flutter']
          .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          })
          .toList(),
          
      );

    // Free or Paid
    String initValue = 'Free';
    final freeorpaid = DropdownButton<String>(
        value: initValue,
        onChanged:(String newValue) {
          setState(() {
            initValue = newValue;
          });
        },
        items: <String>['Free', 'Paid']
          .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          })
          .toList(),
          
      );

    return Scaffold(
        appBar: topBar,
        body: Center( child: Container(color: Colors.white, child:Padding(
            padding: EdgeInsets.all(15.0), child: Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[cnameText, cname, spacer, platformText, platform, spacer,
             prereqText, prereq, spacer, linkText, link,spacer, type, spacer, freeorpaid, spacer, 
             descText, desc, spacer, sButton],),
        ))));
  }
}