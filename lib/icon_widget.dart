
import 'package:flutter/material.dart';

void main(){
  runApp(Journey());
}

class Journey extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Journey",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: JourneyScreen(),
    );
  }

}

class JourneyScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NewApp"),
          backgroundColor:Colors.amberAccent,

        ),

        body:Center(

          child: Icon(
            Icons.add_call,   // here (.) dot have many options.
          size: 50,
          color: Colors.tealAccent,),
        )

    );
  }

}
