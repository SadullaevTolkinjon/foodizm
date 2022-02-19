import 'package:flutter/material.dart';
import 'addition.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  _AddNewAddressState createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  final _key1 = GlobalKey<FormState>();
  final _namecontroller1 = TextEditingController();
  final _key2 = GlobalKey<FormState>();
  final _namecontroller2 = TextEditingController();
  final _key3 = GlobalKey<FormState>();
  final _namecontroller3 = TextEditingController();
  final _key4 = GlobalKey<FormState>();
  final _namecontroller4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
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
                  padding: EdgeInsets.only(left: 10.0, top: 20.0),
                  child: Text(
                    "Add new address",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Form(
                key: _key1,
                child: TextFormField(
                  controller: _namecontroller1,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    hintText: "Title",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  validator: (data) {
                    if (data!.isEmpty) {
                      return "Bo'sh qolishi mumkin emas";
                    } else if (data.length < 3) {
                      return "Juda qisqa";
                    }
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Form(
                key: _key2,
                child: TextFormField(
                  controller: _namecontroller2,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    hintText: "Street address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  validator: (data) {
                    if (data!.isEmpty) {
                      return "Bo'sh qolishi mumkin emas";
                    } else if (data.length < 3) {
                      return "Juda qisqa";
                    }
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Form(
                key: _key3,
                child: TextFormField(
                  controller: _namecontroller3,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    hintText: "City",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  validator: (data) {
                    if (data!.isEmpty) {
                      return "Bo'sh qolishi mumkin emas";
                    } else if (data.length < 3) {
                      return "Juda qisqa";
                    }
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Form(
                key: _key4,
                child: TextFormField(
                  controller: _namecontroller4,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    hintText: "Zip code..",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  validator: (data) {
                    if (data!.isEmpty) {
                      return "Bo'sh qolishi mumkin emas";
                    } else if (data.length < 3) {
                      return "Juda qisqa";
                    }
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 320, left: 15.0, right: 15.0),
              child: InkWell(
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                    color: Color(0XFFF3AE0C),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("SAVE",
                          style: TextStyle(color: Colors.white, fontSize: 25.0))
                    ],
                  ),
                ),
                onTap: () {
                  if (_key1.currentState!.validate() &&
                      _key2.currentState!.validate() &&
                      _key3.currentState!.validate() &&
                      _key4.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return AddtionAddress();
                        },
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
