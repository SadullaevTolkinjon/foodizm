import 'package:flutter/material.dart';
import 'verify.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      "https://i.pinimg.com/564x/21/d8/f7/21d8f7c2b95605a415f2acf428c740e1.jpg"),
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
                    borderRadius:const BorderRadius.all(Radius.circular(20.0)),
                    color:const Color(0XFFFFFFFF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  const    Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Icon(
                          Icons.account_circle,
                          size: 60.0,
                          color: Colors.amber,
                        ),
                      ),
                const      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22.0),
                        ),
                      ),
                 const     Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "Enter your valid mobile number",
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ),
                 const     Padding(
                        padding: EdgeInsets.only(),
                        child: Text(
                          "to continue",
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 12.0, right: 12.0),
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
                              hintText: "Phone number",
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
                            margin: EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.orange.shade500),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.0))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "SEND",
                                  style: TextStyle(
                                      color: Colors.orange.shade500,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              _namecontroller.clear();
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Verify();
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
