import 'package:flutter/material.dart';
import 'enjoyfood.dart';

class Orderfood extends StatefulWidget {
  const Orderfood({Key? key}) : super(key: key);

  @override
  _OrderfoodState createState() => _OrderfoodState();
}

class _OrderfoodState extends State<Orderfood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            const Positioned(
              child: Image(
                  image: NetworkImage(
                      "https://i.pinimg.com/564x/1e/c7/74/1ec774e19e98b69cae79637cea1716d0.jpg"),
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 600),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 35.0),
                      child: Text(
                        "Order Food Online",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Faster & Easier",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet,",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 10.0),
                      child: Text(
                        "consectetur adipiscing elit",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, right: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.orange.shade600,
                                        radius: 5,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey.shade500,
                                        radius: 5,
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.grey.shade500,
                                      radius: 5,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 90.0, right: 10.0),
                                child: InkWell(
                                  child: const Chip(
                                    backgroundColor: Color(0XFFF3AF0C),
                                    label: Text(
                                      "NEXT",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const EnjoyFood();
                                        },
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                height: 320,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: Offset(0, 3),spreadRadius: 5,blurRadius: 7)
                    ],
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(45.0),
                    ),
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
