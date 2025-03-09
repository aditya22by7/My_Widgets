import 'package:flutter/material.dart';
import 'package:my_widges/ui_helper/style.dart';

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
          primarySwatch: Colors.amber
      ),
      home: JourneyScreen(),
    );
  }

}

class JourneyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("New App"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Card(
            shadowColor: Colors.cyanAccent,
            elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Hello Aditya ',
                  style: myTextStyle55(),),
              )),
        )
    );
  }
}