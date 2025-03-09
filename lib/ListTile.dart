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
        body:ListView.separated(itemBuilder:(context,index){
          return ListTile(
            leading:Text('${index+1}') ,// without dollar , index will not print.
            title: Text(arrNames[index]),
            subtitle: Text('Number'),
            trailing:Icon(Icons.add) ,
          );
        } ,
        separatorBuilder: (context,index){
          return Divider(height: 22,thickness: 5,);
        },
          itemCount: (arrNames.length),
        )
    );
  }

}
