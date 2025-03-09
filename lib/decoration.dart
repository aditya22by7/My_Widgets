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
          primarySwatch: Colors.amber
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
        title: Text("New App"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // we use height and width because this container should look different.
        color: Colors.greenAccent,
        child: Center( // we use the center to not overlap the one container with another.
          child: Container(
            height:150,
            width:150,
            decoration:BoxDecoration(
              color: Colors.amber,// we should use color command after the decoration for the given container.
              borderRadius: BorderRadius.only(topLeft:Radius.circular(22),bottomRight:Radius.circular(22)),
                // here in these .(dot) option we different type of circular decorations.
                // we can also use the command as -- shape: BoxShape.circle
              border: Border.all( // outline of the container.
                width: 11,
              color: Colors.yellowAccent
            ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 11,
                    color: Colors.cyanAccent,
                    spreadRadius: 20,

            )]
            ),
          ),
        ),
      ),
    );
  }
}