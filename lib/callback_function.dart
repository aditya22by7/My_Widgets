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
  callBack(){
    print('Clicked!!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NewApp"),
          backgroundColor:Colors.amberAccent,

        ),

        // this mainly uses for when we want to use the data from one class to another class.
        // or call the function from one class to another class or one function uses many times so we can call it particularly.

        body: ElevatedButton(
            onPressed: callBack,
            child: Text('Click Here'))
    );
  }

}
