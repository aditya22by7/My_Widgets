
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

        // for customized icons we use font awesome icons.

        body:Center(

          child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,   // to take the both FaIcon in the center.
            children: [

              FaIcon(FontAwesomeIcons.googlePay,
              size: 40,),

              SizedBox(  // here we use this to make the gap or space between the both FaIcon.
                height: 30,
              ),

              FaIcon(
                  FontAwesomeIcons.amazon,
              color: Colors.brown,
              size: 55,)

            ],
          ),
        )

    );
  }

}
