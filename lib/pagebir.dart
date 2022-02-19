import 'package:flutter/material.dart';
import 'orderfood.dart';

class Pagebir extends StatefulWidget {
  const Pagebir({Key? key}) : super(key: key);

  @override
  _PagebirState createState() => _PagebirState();
}

class _PagebirState extends State<Pagebir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF3AE0C),
      body: InkWell(
        child: const Center(
          child: Text(
            "Foodizm",
            style: TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const Orderfood();
              },
            ),
          );
        },
      ),
    );
  }
}
