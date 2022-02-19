import 'package:flutter/material.dart';
import 'changepassword.dart';
import 'information.dart';

class Settins extends StatefulWidget {
  const Settins({Key? key}) : super(key: key);

  @override
  _SettinsState createState() => _SettinsState();
}

class _SettinsState extends State<Settins> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0),
                child: Text(
                  "Settings",
                  style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Container(
              height: 30.0,
              color: Colors.grey.shade400,
              child: Center(
                child: Text("User Information"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Card(
              child: ListTile(
                title: Text("Information & Contact"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Information();
                  }));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Card(
              child: ListTile(
                title: Text("Change Password"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ChangePassword();
                  }));
                  
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Container(
              height: 30.0,
              color: Colors.grey.shade400,
              child: Center(
                child: Text("App settings"),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "App version",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text("1.0.1", style: TextStyle(fontSize: 20.0)),
              )
            ],
          )
        ],
      ),
    );
  }
}
