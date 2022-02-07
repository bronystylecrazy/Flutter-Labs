import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({this.name = "", this.title = "", Key? key}) : super(key: key);

  final String name;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.account_circle,
            size: 50,
            color: Colors.white,
          ),
        ),
        Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    name,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )),
              FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.white),
                  )),
            ])
      ],
    );
  }
}
