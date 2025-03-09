
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

        // For simple method --
        // we can do it with the help of row and then mentioned the hello and world differently.


        body:Center(
          child: RichText( // it automatically transfer the leftover written material to the next line.
              text: TextSpan(
                style: TextStyle( // here we provide the default style .
                  color: Colors.lightGreenAccent,
                  fontSize: 33
                ),
                children: <TextSpan>[
                  TextSpan(text: 'Hello'),
                  TextSpan(text: 'Aditya !',style: TextStyle( // here we provide style manually by our own choice.
                    fontSize: 44,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold
                  )),

                  TextSpan( // here is the default style is used.
                    text: 'Welcome to',
                  ),

                  TextSpan(
                    text: 'Flutter',
                    style: TextStyle(  // here also we provide the style manually.

                      fontWeight: FontWeight.bold,
                      fontSize: 55,
                      color: Colors.tealAccent,
                      fontStyle: FontStyle.italic,
                    )

                  )
                ]
              )),
        )

    );
  }

}
