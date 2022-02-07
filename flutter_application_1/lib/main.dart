import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        	body: Container(
      	margin: const EdgeInsets.all(15),
      	padding: const EdgeInsets.all(15),
      	decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
         	 width: 2,
       	  ),
     	 ),
      	child: Column(
       	 mainAxisSize: MainAxisSize.min,
        	crossAxisAlignment: CrossAxisAlignment.stretch,
        	children: [
         	 Row(
           	 children: [
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.account_circle,
                    size: 50,
                  )),Column(mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,children: [
	Text(
 	"Flutter McFlutter",
	 textAlign: TextAlign.start,
	style: TextStyle(fontSize: 24),
 	),
  	Text(
   	   "Experienced App Developer",
 	      ),
    	]),
	],
          ),
 SizedBox(height: 15),
     Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('123 Main Street'), Text('(415) 555-0198')]),
 SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
       Icon(Icons.accessibility),
       Icon(Icons.timer),
       Icon(Icons.phone_android),
      Icon(Icons.phone_iphone),
    ],
          )
        ],
      ),
    ));
  }
}
