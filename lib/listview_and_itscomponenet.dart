import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    var arrNames=['raman','aditya','raamu','dileep','hehe','helo','hmmmm','pulkit','namkeen'];
    // take the name arrays here .
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('hello buddy'),
        ),
        /*body:ListView.builder(itemBuilder:(context,index){
          return Text(arrNames[index],style:TextStyle(fontSize: 30 ,fontWeight: FontWeight.w500),);

        },
          itemCount: arrNames.length,
          itemExtent: 100,
          //scrollDirection: Axis.horizontal,
          // for horizontal axis and same for scrolling in horizontal axis.

        )*/
        // list view is a combination of both row and column. can work separatly.
        // it is used in apps like zomato & swiggy to display a list of restaurant.
        // it is a scrollable widget we can display multiple items on the same screen.
        // also auto update the changes in the data.

      // now separate listview
      body: ListView.separated(itemBuilder:(context,index){
        return Column( // same as with Row.
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(arrNames[index],style:TextStyle(fontSize: 30 ,fontWeight: FontWeight.w500),),
          Padding(
            padding: const EdgeInsets.all(8.0),
          ),
            ],
          ),
        ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text(arrNames[index],style:TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text(arrNames[index],style:TextStyle(fontSize: 30 ,fontWeight: FontWeight.w500),),
       ),
        ],
        );
      },
          separatorBuilder:(context,index){
        return Divider(height: 11,thickness: 2,);
          },
          itemCount:arrNames.length,

      )
    );
  }
}