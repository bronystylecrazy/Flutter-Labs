import 'package:flutter/material.dart';
import '../pages/home.dart';

class MyCard extends StatelessWidget {
  const MyCard(
      {Key? key,
      this.name = "Sirawit Pratoomsuwan",
      this.title = "Experienced App Developer",
      this.address = '123 Main Street',
      this.phone = '(415) 555-0198'})
      : super(key: key);

  final String name;
  final String title;
  final String address;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Homepage(
        name: name,
        title: title,
        address: address,
        phone: phone,
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          // border: Border.all(color: Colors.grey.shade50, width: 1),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 183, 33, 255),
              Color.fromARGB(255, 33, 212, 253),
            ],
          )),
    );
  }
}
