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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

  var time = DateTime.now(); // here not required to call the object, just need it's reference.

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('hello buddy'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Current time= $time', // we can get many options by ${time.options}.
                // we can also do it like- ${time.hour}:${time.minute}:${time.second}.
                style: TextStyle(fontSize: 20),),
              ElevatedButton(
                  onPressed: (){
                    setState(() { // it will only comes in StatefulWidget.
                      // it will update the time while click on the given button.
                    });
                  },

                  child:Text('Current time'))
            ],
          ),
        ),
      )
    );
  }
}
