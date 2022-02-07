import 'package:flutter/cupertino.dart';
import 'package:layout_basic1/components/body.dart';
import 'package:layout_basic1/components/footer.dart';
import 'package:layout_basic1/components/header.dart';

class Homepage extends StatelessWidget {
  const Homepage(
      {this.title = "",
      this.name = "",
      this.address = "",
      this.phone = "",
      Key? key})
      : super(key: key);

  final String name;
  final String title;
  final String address;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Header(name: name, title: title),
        const SizedBox(height: 8),
        Body(address: address, phone: phone),
        const SizedBox(height: 16),
        Footer()
      ],
    );
  }
}
