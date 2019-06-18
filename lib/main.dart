import 'package:flutter/material.dart';
import 'home/home_page.dart';
import 'add-courses/add_courses.dart';
import 'login-page/login_page.dart';

void main() => runApp(MyApp());

int _userSignedIn = 1;

Widget UserSignInCheck (int val){
  if (val == 0){
    return LoginPage();
  }

  else if (val ==1){
  return MyHomePage();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpenCourser',
      home: UserSignInCheck(_userSignedIn),
      debugShowCheckedModeBanner: false,
    );
  }
}

