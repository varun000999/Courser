import 'package:flutter/material.dart';

class AddCourses extends StatefulWidget {
  AddCourses({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AddCourseState createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourses> {
  var _courseTypes = ['Web Development', 'Python', 'Java', 'Flutter'];
  var _courseTypeSelected = 'Web Development';

  var _priceTypes = ['Free', 'Paid'];
  var _priceTypeSelected = 'Free';

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
   
    final type = DropdownButton<String>(

					    items: _courseTypes.map((String dropDownStringItem) {
					    	return DropdownMenuItem<String>(
							    value: dropDownStringItem,
							    child: Text(dropDownStringItem),
						    );
					    }).toList(),

					    onChanged: (String newValueSelected) {
					    	// Your code to execute, when a menu item is selected from drop down
						    _onCourseSelected(newValueSelected);
					    },

					    value: _courseTypeSelected,

);

    // Free or Paid
   
    final free = DropdownButton<String>(

					    items: _priceTypes.map((String dropDownStringItem) {
					    	return DropdownMenuItem<String>(
							    value: dropDownStringItem,
							    child: Text(dropDownStringItem),
						    );
					    }).toList(),

					    onChanged: (String newValueSelected) {
					    	// Your code to execute, when a menu item is selected from drop down
						    _onPriceSelected(newValueSelected);
					    },

					    value: _priceTypeSelected,

);

    return Scaffold(
        appBar: topBar,
        body: Center( child: Container(color: Colors.white, child:Padding(
            padding: EdgeInsets.all(15.0), child: Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[cnameText, cname, spacer, platformText, platform, spacer,
             prereqText, prereq, spacer, linkText, link,spacer, type, spacer, free, spacer, 
             descText, desc, spacer, sButton],),
        ))));
  }

  void _onCourseSelected(String newValueSelected) {
	  setState(() {
		  this._courseTypeSelected = newValueSelected;
	  });
  }
  void _onPriceSelected(String newValueSelected) {
	  setState(() {
		  this._priceTypeSelected = newValueSelected;
	  });
  }
}


