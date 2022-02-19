import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'pagebir.dart';
import 'paymentmethods.dart';
import 'settings.dart';
import 'orders.dart';
import 'addition.dart';

class Jessica extends StatefulWidget {
  const Jessica({Key? key}) : super(key: key);

  @override
  _JessicaState createState() => _JessicaState();
}

class _JessicaState extends State<Jessica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Container(
                height: 360.0,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.pinimg.com/736x/12/3c/66/123c664fc1117ab6d3b5448531a42226.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 3,
                                  offset: Offset(0, 3),
                                  spreadRadius: 5)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 35.0),
                              child: Text(
                                "Jessica Jones",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                "+1 23 456 789",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        height: 120,
                      ),
                      bottom: 30.0,
                      left: 10.0,
                      right: 10.0,
                    ),
                    Positioned(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          size: 40.0,
                        ),
                        radius: 40.0,
                      ),
                      bottom: 100.0,
                      right: 50,
                      left: 50.0,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Container(
                      height: 100.0,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: Offset(0, 3),
                                blurRadius: 3,
                                spreadRadius: 3)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Icon(
                              Icons.payment,
                              size: 35.0,
                              color: Colors.amber,
                            ),
                          ),
                          Text("Payment"),
                          Text("methods")
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PaymentMethods();
                      }));
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 100.0,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: Offset(0, 3),
                                blurRadius: 3,
                                spreadRadius: 3)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Icon(
                              Icons.location_city,
                              size: 35.0,
                              color: Colors.amber,
                            ),
                          ),
                          Text("All"),
                          Text("address")
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AddtionAddress();
                      }));
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 100.0,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: Offset(0, 3),
                                blurRadius: 3,
                                spreadRadius: 3)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Icon(
                              Icons.message_outlined,
                              size: 35.0,
                              color: Colors.amber,
                            ),
                          ),
                          Text("General"),
                          Text("details")
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Orders();
                      }));
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Container(
                      height: 100.0,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: Offset(0, 3),
                                blurRadius: 3,
                                spreadRadius: 3)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 10.0),
                            child: Icon(
                              Icons.settings,
                              size: 35.0,
                              color: Colors.amber,
                            ),
                          ),
                          Text("Settings"),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Settins();
                      }));
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 100.0,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: Offset(0, 3),
                                blurRadius: 3,
                                spreadRadius: 3)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 10.0),
                            child: Icon(
                              Icons.support,
                              size: 35.0,
                              color: Colors.amber,
                            ),
                          ),
                          Text("Support"),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Container(
                      height: 100.0,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: Offset(0, 3),
                                blurRadius: 3,
                                spreadRadius: 3)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 10.0),
                            child: Icon(
                              Icons.logout,
                              size: 35.0,
                              color: Colors.amber,
                            ),
                          ),
                          Text("Log out"),
                        ],
                      ),
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
        title: "Log out?",
        desc: "do you want logging out",
        btnCancel: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.amber),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Cancel"),
        ),
        btnOk: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Pagebir();
            }));
          },
          style: ElevatedButton.styleFrom(primary: Colors.green),
          child: Text("Okay"),
        ))
      ..show();
  }
}
