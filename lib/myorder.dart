import 'package:flutter/material.dart';
import 'currentlocation.dart';
import 'jessica.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class MyOrder extends StatefulWidget {
  int? qancha;
  double? narxi;
  MyOrder({Key? key, this.qancha, this.narxi}) : super(key: key);

  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  double narx = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Text(
                    "MY ORDER",
                    style:
                        TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(),
              child: Container(
                margin: EdgeInsets.all(8.0),
                height: 450.0,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, mainAxisExtent: 150),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      margin: EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 15,
                            left: 45.0,
                            child: Container(
                              height: 200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 50.0, top: 10.0),
                                    child: Text(
                                      "Special Pan Pizza",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 100.0, top: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.remove_circle)),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(),
                                          child: Text(
                                            widget.qancha.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.add_circle)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 120, top: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "\$ ${widget.narxi.toString()}",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        offset: Offset(0, 3),
                                        blurRadius: 5)
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                            ),
                          ),
                          Positioned(
                            top: 10.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.yellow,
                              backgroundImage: NetworkImage(
                                  "https://key0.cc/images/preview/102989_f25cef08e65111362cfcf72bfce68b3b.png"),
                              radius: 60.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 4,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 140.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Color(0XFFE7EAFD)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://www.clipartmax.com/png/middle/201-2010658_home-location-icon-icon-for-home-location.png"),
                              radius: 22,
                              backgroundColor: Color(0XFFE7EAFD),
                            ),
                          ),
                          Text(
                            "Address",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CurrenLocation();
                          },
                        ),
                      );
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 140.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Color(0XFFFDF5E0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://image.pngaaa.com/836/2538836-middle.png"),
                              radius: 22,
                              backgroundColor: Color(0XFFFDF5E0),
                            ),
                          ),
                          Text(
                            "Payment",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Jessica();
                      }));
                    },
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 15.0),
                  child: Text(
                    "Subtotal",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text("${widget.narxi! * 3}",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w400)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Text(
                    "Taxes & Fee",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text("${5.00} \$",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w400)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Text(
                    "Delivery",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text("Free",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w400)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Text(
                    "TOTAL",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text("${(widget.narxi! * 3) + 5} \$",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w400)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0),
                      height: 50.0,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Pay & Place order",
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                          color: Color(0XFFF3AE0C)),
                    ),
                    onTap: () {
                      myAwesomeDialog2();
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  myAwesomeDialog2() {
    return AwesomeDialog(
        context: context,
        dialogType: DialogType.SUCCES,
        title: "Congratulation !!!",
        desc: "SuccesFully you buy this meals",
        btnCancel: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.amber),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Cancel"),
        ),
        btnOk: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(primary: Colors.green),
          child: Text("Okay"),
        ))
      ..show();
  }
}
