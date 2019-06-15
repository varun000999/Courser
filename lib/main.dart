import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Courser',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

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
      title: Text('Courser', style: TextStyle(color: Colors.purple),
        textAlign: TextAlign.left,),
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0.0,
      leading: Icon(Icons.menu, color: Colors.purple,),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search, color: Colors.purple,),
          onPressed: () {},
        )
      ],
    );

    Widget _getListItemUI(BuildContext context, int index) {
      return new Card(
          child: new Column(
            children: <Widget>[
              new ListTile(
                title: new Text(
                  "Python Programming",
                  style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                subtitle: new Column(
                   children :<Widget>[Text("Platform", style: TextStyle(fontSize:9.0))],
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                onTap: () {}
      )]));
    }


    final gridItem = new Card(
        child: new Column(
          children: <Widget>[
            new Container(
              color: Colors.red,
            )
          ]
        ),
      );


    return Scaffold(
        appBar: topBar,
        body:
            Padding(
              padding: const EdgeInsets.all(20.0),
        child:Row(children: <Widget>[
              new Expanded(child:
        Column(

        children:<Widget>[
          SizedBox(height:10.0),
        Align(alignment: Alignment.centerLeft, child:Text("Python", style: TextStyle(fontFamily: "Roboto", fontWeight:FontWeight.bold, fontSize: 24.0),)),
        new Expanded(
          child:GridView.count(
            crossAxisCount: 3,
            children: List.generate(6, (index){
              return Card(color: Colors.grey,);})
        )
    ),

        ]))])));
    }
}
