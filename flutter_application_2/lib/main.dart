import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Worada Damrongratnuwong',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  'Computer Science Student',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          FavouriteIcon(),
        ],
      ),
    );

    Color color = Colors.teal;

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'My name is Worada Damrongratnuwong. you can call me Bua too!'
        '\n\n'
        'My hobbies are riding horse, singing, and watching movies.'
        'I studied at Assumption Convent and now I am a computer science student at KMUTT',
        softWrap: true,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black87,
        ),
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, '098-765-4321'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal,
      ),
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'images/profile.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class FavouriteIcon extends StatefulWidget {
  FavouriteIcon({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _FavouriteIcon();
}

class _FavouriteIcon extends State<FavouriteIcon> {
  int count = 41;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: Icon(
            Icons.person,
            color: Colors.teal,
          ),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
        Text('$count'),
      ],
    );
  }
}
