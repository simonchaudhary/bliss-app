
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bliss App")  
        ),
        body: Container(
          decoration: BoxDecoration(color: Color(0xccf5f5f5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              MyHeader("Welcome to Bliss App"),
              MyTextField("Enter Phone Number or Email"),
              MyButton("Continue")
            //MainMenu()
            ],
          )
        ),
      )
    );
  }
}

class MyHeader extends StatelessWidget{
  final String myHeader;
 
  const MyHeader(this.myHeader);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(16),
      height: 60,
        child:Center(
          child: Text(myHeader, 
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), 
                    ),
        ),
      );  
  }
}

class MyTextField extends StatelessWidget{

  final String hint;
  const MyTextField(this.hint);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(32),
        height: 60,
        padding: const EdgeInsets.all(2),
       child: TextField(
          decoration: InputDecoration(
            labelText: "Enter Phoneno or Email",
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(4)))
          ), 
        ),
      );
    
  }
}

class MyButton extends StatelessWidget{
  final String buttonText;

  MyButton(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        padding: EdgeInsets.all(16),
        child: Text(buttonText), 
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => MainMenu()));
        }
      ),
    );
  }
  
}




class MainMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Main Menu"),
        ),
        body: Center(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            MyHeader("Welcome User"),
            SizedBox(height: 40,),
            Row(
              children: <Widget>[ 
                  MyButton("My Info"),
                  SizedBox(width: 10,),
                  MyButton("Pay"),  
              ],
            ),
            SizedBox(height: 40,),
            MyButton("Send Message"),
            SizedBox(height: 40,),
            MyButton("Report a Problem")
            
          ],
        ),
      ),
    )
      )  
    );
    
  }

}

class ReportScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Report a Problem"),      
        ),
        body: Center(
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }

}