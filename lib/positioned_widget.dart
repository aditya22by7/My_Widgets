
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


        // we use this to positioning of the widgets

        body:Container(
          width: 200, // if we do not mentioned any particular height or width ,it will automatically take the child height and width
          height: 200,
          color: Colors.orangeAccent,


          child: Stack( // here we can positioned any widget by our choice.
            children: [

              Positioned( // after creating a Container then we wrap the Container in Positioned Widget.
                left: 33,
                bottom: 44,


                child: Container(
                  width: 70,
                  height: 60,
                  color: Colors.lightGreenAccent,
                ),
              )
            ],
          ),
        ),

    );
  }

}
