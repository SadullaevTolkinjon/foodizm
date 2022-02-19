import 'package:flutter/material.dart';
import 'glvniy.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  final _formKey = GlobalKey<FormState>();
  final _namecontroller = TextEditingController();
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
                      "https://i.pinimg.com/564x/28/30/99/28309942392f14edbd0b9745e4af76ae.jpg"),
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
                        offset:const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Color(0XFFFFFFFF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                 const     Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Icon(
                          Icons.account_circle,
                          size: 60.0,
                          color: Colors.amber,
                        ),
                      ),
                  const    Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                          "Verification code",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22.0),
                        ),
                      ),
                  const    Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "OTP has been sent to 123 456 789",
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 25.0, left: 15.0, right: 15.0),
                        child: Form(
                          key: _formKey,
                          child: TextFormField(
                            controller: _namecontroller,
                            decoration:const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30.0),
                                ),
                              ),
                              hintText: "Your code here...",
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30.0),
                                ),
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                            validator: (data) {
                              if (data!.isEmpty) {
                                return "Bo'sh qolishi mumkin emas";
                              }
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 20.0, right: 20.0),
                        child: InkWell(
                          child: Container(
                            height: 55.0,
                            width: double.infinity,
                            margin:const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.orange.shade500),
                                borderRadius:
                                 const   BorderRadius.all(Radius.circular(25.0))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "VERIFY",
                                  style: TextStyle(
                                      color: Colors.orange.shade500,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0),
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              _namecontroller.clear();
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const GlavniyPage();
                              }));
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
                right: 25,
                top: 450,
                left: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
