
import 'package:flutter/material.dart';
import 'package:my_widges/splash_screen1.dart';


void main(){
  runApp(NewApp());
}

class NewApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"NewApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: splashscreen(),
    );
  }

}



// Stateful widget is used to show the changes in run time or real time changes of any app.

// here the most important term include in the Stateful widget is setState which mainly works to show particular changes in our ui or
// our own choice to changes in particular components or updates in something in our ui  then we have to use setState in Stateful widget.

// Stateless widget is used to show the no real time changes in our ui or no changes in real time in app.


class NewAppScreen extends StatefulWidget{

  // just to do one step as our class is in stateless widget then
  // we press Alt + Enter on the Stateless widget and choose the option of convert it in the Stateful widget.


  @override
  State<NewAppScreen> createState() => _JourneyScreenState();
}

class _JourneyScreenState extends State<NewAppScreen> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar:AppBar(
          title: Text('New App'),
          backgroundColor:Colors.orangeAccent,
        ) ,


        body: Container(
          color: Colors.lightGreenAccent,
          child: Center(
              child: Text('Hello Aditya',
                style: TextStyle(fontSize: 55,
                    color: Colors.indigo),)),
        )

    );

  }
}




