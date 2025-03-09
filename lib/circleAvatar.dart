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
          primarySwatch: Colors.purple
      ),
      home: JourneyScreen(),
    );
  }

}

class JourneyScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var arrNames=['aditya','dileep','raman','rahul','anuj'];
    return Scaffold(
        appBar: AppBar(
          title: Text("NewApp"),
          backgroundColor:Colors.amberAccent,

        ),
        body:Center(// to place the image in the center.
          child: CircleAvatar(// for implementing or showing the round or circular image in any project we use circleAvatar.
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Column(// here we can give text and image both in order way .
                      children: [
                        Container(
                          width: 100,
                            height: 100,
                            child: Image.asset('assets/images/hello.jpg')),
                        Text('Name'),
                      ],
                    ),
                  ),


           // child:Text('Aditya', style: TextStyle(color: Colors.purple),), // we get another attribute as child.,
           // backgroundImage: AssetImage('assets/images/hello.jpg'),// we use text in child attiribute if we want only text in circle we can remove background image command.
            backgroundColor:Colors.cyanAccent,
            radius: 80, // if we want to save the image dynamically then we use minradius or maxradius.
          ),
        ),
    );
  }

}
