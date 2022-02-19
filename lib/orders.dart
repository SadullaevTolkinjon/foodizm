import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0),
                child: Text(
                  "My Orders",
                  style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(),
                  child: Container(
                    height: 35.0,
                    width: 110,
                    child: Center(
                      child: Text(
                        "Ongoing",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        color: Colors.amber),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Container(
                    height: 35.0,
                    width: 110,
                    child: Center(
                      child: Text(
                        "Delivered",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Container(
                    height: 35.0,
                    width: 110,
                    child: Center(
                      child: Text(
                        "Cancelled",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Card(
              child: ListTile(
                trailing:  Padding(
                  padding: EdgeInsets.only(),
                  child: Container(
                    height: 35.0,
                    width: 110,
                    child: Center(
                      child: Text(
                        "Detailing",
                        style: TextStyle(color: Colors.amber),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.amber),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        color: Colors.white),
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "Order no: 123456",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text("12 sep 2019"), Text("  08:09 PM")],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
