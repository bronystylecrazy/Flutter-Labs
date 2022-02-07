import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    this.address = "",
    this.phone = "",
    Key? key,
  }) : super(key: key);

  final String address;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            address, // '123 Main Street'
            style: const TextStyle(color: Colors.white),
          ),
        ),
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            phone, // '(415) 555-0198'
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
