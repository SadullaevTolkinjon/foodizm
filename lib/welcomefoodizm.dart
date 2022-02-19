import 'package:flutter/material.dart';
import 'login.dart';

class WelcomeFoodizm extends StatefulWidget {
  const WelcomeFoodizm({Key? key}) : super(key: key);

  @override
  _WelcomeFoodizmState createState() => _WelcomeFoodizmState();
}

class _WelcomeFoodizmState extends State<WelcomeFoodizm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            const Positioned(
              child: Image(
                image: NetworkImage(
                    "https://i.pinimg.com/564x/78/ca/c7/78cac7f6b82ff9d7f03e0ce5a5473917.jpg"),
              ),
            ),
            Positioned(
              child: Container(
                height: 370,
                width: 300.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  color: const Color(0XFFFFFFFF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Icon(
                        Icons.account_circle,
                        size: 60.0,
                        color: Colors.amber,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 25.0),
                      child: Text(
                        "WELCOME TO FOODIZM",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: InkWell(
                        child: Container(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 100.0),
                                  child: Text(
                                    "Phone number",
                                    style: TextStyle(color: Colors.green,fontSize: 18.0),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 50.0),
                                  child: CircleAvatar(
                                    child: Icon(Icons.phone),
                                    radius: 15.0,
                                    backgroundColor: Colors.green,
                                  ),
                                )
                              ],
                            ),
                          ),
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30.0)),
                          ),
                          margin: const EdgeInsets.only(
                              top: 20.0, right: 20.0, left: 20.0),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Login();
                          }));
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: InkWell(
                        child: Container(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 120.0),
                                  child: Text(
                                    "Facebook",
                                    style: TextStyle(color: Colors.blue,fontSize: 18.0),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 70.0),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "https://assets.fontsinuse.com/static/use-media-items/17/16902/upto-700xauto/56702dda/facebook-favicon.png",
                                    ),
                                    radius: 15.0,
                                    backgroundColor: Colors.green,
                                  ),
                                )
                              ],
                            ),
                          ),
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30.0)),
                          ),
                          margin: const EdgeInsets.only(
                              top: 20.0, right: 20.0, left: 20.0),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(),
                      child: InkWell(
                        child: Container(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 120.0),
                                  child: Text(
                                    "Google",
                                    style: TextStyle(color: Colors.red,fontSize: 18.0),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 80.0),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://i.pinimg.com/originals/dd/dc/a9/dddca9e16ea9cef36ac8e347ab13f98d.jpg"),
                                    radius: 15.0,
                                    backgroundColor: Colors.green,
                                  ),
                                )
                              ],
                            ),
                          ),
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30.0)),
                          ),
                          margin: const EdgeInsets.only(
                              top: 20.0, right: 20.0, left: 20.0),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
              right: 25,
              top: 450,
              left: 25,
            ),
          ],
        ),
      )),
    );
  }
}
