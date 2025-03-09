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
          primarySwatch: Colors.purple,
        textTheme:TextTheme(
          headlineLarge:TextStyle(fontSize: 21,fontWeight: FontWeight.bold),
          headlineMedium:TextStyle(fontSize: 21,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),
        )
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
        body:Column(
          children: [
            Text('text 1',style: Theme.of(context).textTheme.headlineLarge!.copyWith(color:Colors.indigoAccent)),
            Text('text 2',style: Theme.of(context).textTheme.headlineMedium),
        //    Text('text 3',style: Theme.of(context).textTheme.headlineLarge),
        //    Text('text 4',style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.cyanAccent)),
            Text('text 5',style: myTextStyle55(textColor: Colors.teal) ,), // we put textColor inside the ()because we want to change the particular text.
            Text('text 6',style: myTextStyle40(),),
          ],// here we put ! (not) here because we confirm here its not null
          // also copyWith stands for here as extends.
        )
    );
  }

}
