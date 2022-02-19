import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'addnewadress.dart';

class CurrenLocation extends StatefulWidget {
  const CurrenLocation({Key? key}) : super(key: key);

  @override
  _CurrenLocationState createState() => _CurrenLocationState();
}

class _CurrenLocationState extends State<CurrenLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Container(
                height: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.clipartkey.com/mpngs/m/8-80429_clipart-map-location-location-clipart.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Hi! Nice to meet you",
                    style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Please allow your location",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "to continue using app",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: InkWell(
                child: Container(
                  height: 50.0,
                  margin: EdgeInsets.only(left: 30.0, right: 30.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      border: Border.all(color: Colors.amber.shade800)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Use current location",
                        style: TextStyle(
                            color: Colors.amber.shade600,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  myAwesomeDialog2();
                },
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
        dialogType: DialogType.INFO,
        title: "Info!!!",
        desc: "Do you want to use current location",
        btnCancel: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.amber),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Deny"),
        ),
        btnOk: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AddNewAddress();
            }));
          },
          style: ElevatedButton.styleFrom(primary: Colors.green),
          child: Text("Allow"),
        ))
      ..show();
  }
}
