import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);
  noop() => {};

  @override
  Widget build(BuildContext context) {
    var footerIcons = <IconData>{Icons.accessibility};
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: const Icon(Icons.accessibility, color: Colors.white),
          onPressed: noop,
        ),
        IconButton(
          icon: const Icon(Icons.timer, color: Colors.white),
          onPressed: noop,
        ),
        IconButton(
          icon: const Icon(Icons.phone_android, color: Colors.white),
          onPressed: noop,
        ),
        IconButton(
          icon: const Icon(Icons.phone_iphone, color: Colors.white),
          onPressed: noop,
        ),
      ],
    );
  }
}
