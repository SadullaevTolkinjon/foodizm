import 'package:flutter/material.dart';
import 'package:foodizmexam/database.dart';
import 'mycart.dart';

class Special extends StatefulWidget {
  Map? foodlar;
  Special({Key? key, this.foodlar}) : super(key: key);

  @override
  _SpecialState createState() => _SpecialState();
}

class _SpecialState extends State<Special> {
  var _narx = 0.0;
  var _counter = 0;
  var nechta = 0;
  var narx = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: 600,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            widget.foodlar!["rasm"].toString(),
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(150.0),
                      ),
                    ),
                  ),
                  flex: 7,
                ),
                Expanded(
                  child: Container(
                    height: 600,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 40.0),
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              widget.foodlar!["iconnomlar"].toString(),
                              style: TextStyle(fontSize: 100.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: CircleAvatar(
                            radius: 40.0,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return MyCart(control: nechta,nechta2: narx,);
                                }));
                              },
                              icon: Icon(
                                Icons.shopping_cart,
                                size: 45.0,
                              ),
                            ),
                            backgroundColor: Colors.amber,
                          ),
                        )
                      ],
                    ),
                  ),
                  flex: 3,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Text(
                    "Special Pan ${widget.foodlar!["iconnomlar"]}",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              margin: EdgeInsets.only(left: 18, right: 18, top: 15.0),
              child: Text(
                  "Lorem ipsum dolor sit amet, consecturer adipiscing elit. Nulla porttitor nisi fringilla odio pritium, quis venenatis velit pellesntesque"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 90.0,
                  width: 90.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "Extra",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.0),
                        child: Text(
                          "Cheese",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle,
                            size: 24.0,
                          ),
                          iconSize: 24.0,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 90.0,
                  width: 90.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "Extra",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.0),
                        child: Text(
                          "Tapping",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: IconButton(
                          onPressed: () {},
                          color: Colors.amber,
                          icon: Icon(
                            Icons.check,
                            size: 24.0,
                          ),
                          iconSize: 24.0,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 90.0,
                  width: 90.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "Extra",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.0),
                        child: Text(
                          "Cheese",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle,
                            size: 24.0,
                          ),
                          iconSize: 24.0,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 90.0,
                  width: 90.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "Extra",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.0),
                        child: Text(
                          "Tapping",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: IconButton(
                          onPressed: () {},
                          color: Colors.amber,
                          icon: Icon(
                            Icons.check,
                            size: 24.0,
                          ),
                          iconSize: 24.0,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 25.0, left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50.0,
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            _counter -= 1;

                            if (_counter < 0) {
                              _counter = 0;
                            }
                            if (_counter > 0) {
                              _narx = _narx - 10.50;
                            }
                            narx = _narx;
                            nechta = _counter;

                            setState(() {});
                          },
                          icon: Icon(Icons.remove_circle),
                        ),
                        Text(
                          "$_counter",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {
                            _counter += 1;
                            _narx = _narx + 10.50;
                            narx = _narx;
                            nechta = _counter;
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.add_circle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "$_narx \$",
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
