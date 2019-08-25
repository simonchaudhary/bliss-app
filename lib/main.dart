import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Toolbar"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              DecoratedBox(decoration: BoxDecoration(gradient: LinearGradient(
              colors: orangeGradients,
              begin: Alignment.topLeft,
              end: Alignment.center),),
                child: Padding(padding: const EdgeInsets.all(8.0),
                  child: TextField(decoration: InputDecoration(border: InputBorder.none, hintText: 'Enter you email'),),
                
                ),  
              ),         
            ],
         ),
        )
      ),
    );
  }
}
const List<Color> orangeGradients = [
  Color(0xFFFF9844),
  Color(0xFFFE8853),
  Color(0xFFFD7267),
];