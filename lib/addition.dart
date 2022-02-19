import 'package:flutter/material.dart';
import 'myorder.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class AddtionAddress extends StatefulWidget {
  const AddtionAddress({Key? key}) : super(key: key);

  @override
  _AddtionAddressState createState() => _AddtionAddressState();
}

class _AddtionAddressState extends State<AddtionAddress> {
  var _checkvalue;
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
              padding: EdgeInsets.only(top: 20.0),
              child: Card(
                child: RadioListTile(
                    value: "erkak",
                    groupValue: _checkvalue,
                    activeColor: Colors.amber,
                    title: const Text("123 NY Street"),
                    onChanged: (v) {
                      setState(() {
                        _checkvalue = v;
                      });
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(),
              child: Card(
                child: RadioListTile(
                  value: "ayol",
                  groupValue: _checkvalue,
                  activeColor: Colors.amber,
                  title: const Text("124 NY Street"),
                  onChanged: (v) {
                    setState(
                      () {
                        _checkvalue = v;
                      },
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(),
              child: Card(
                child: RadioListTile(
                  value: "bola",
                  groupValue: _checkvalue,
                  activeColor: Colors.amber,
                  title: const Text("125 NY Street"),
                  onChanged: (v) {
                    setState(
                      () {
                        _checkvalue = v;
                      },
                    );
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
                  myAwesomeDialog2();
                },
              ),
            ),
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
        desc: "SuccesFully you have saved location",
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
