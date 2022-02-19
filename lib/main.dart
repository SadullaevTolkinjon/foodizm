import 'package:flutter/material.dart';
import 'pagebir.dart';
import 'jessica.dart';
import 'orders.dart';



import 'addnewadress.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Pagebir(),
    );
  }
}
