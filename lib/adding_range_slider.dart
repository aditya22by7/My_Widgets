
import 'package:flutter/material.dart';
import 'package:my_widges/passing_data_one_toanother1.dart';

void main(){
  runApp(Journeyy());
}

class Journeyy extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Journeyy",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home:JourneyyScreen() ,
    );
  }

}



class JourneyyScreen extends StatefulWidget{

  @override
  State<JourneyyScreen> createState() => _JourneyyScreenState();
}

class _JourneyyScreenState extends State<JourneyyScreen> {

  RangeValues values = RangeValues(10, 100);

  @override
  Widget build(BuildContext context) {
    
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
        appBar:AppBar(
          title: Text('New App'),
          backgroundColor:Colors.orangeAccent,
        ) ,


        body:Center(

          child: RangeSlider(
              values: values, // the stating and ending values.

            labels: labels, // to show the value on the drag area.


            divisions: 20,

              min: 10,

              max: 100,

              activeColor: Colors.amber, // for main slider

              inactiveColor: Colors.lightGreenAccent, // for the fixed area of slider.

              onChanged: (newValue){ // entering the new value
                values =newValue;


                print('${newValue.start},${newValue.end}');

                setState(() {

                });

              },),
        )

    );

  }
}




