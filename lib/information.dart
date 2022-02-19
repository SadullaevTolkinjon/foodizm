import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0),
                child: Text(
                  "Information",
                  style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(),
                child: IconButton(
                  icon: Icon(
                    Icons.mode_edit_outline,
                    size: 20.0,
                    color: Colors.amber,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
           Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Card(
              child: ListTile(
                title: Text("username",style: TextStyle(color: Colors.grey),),
                trailing: Text("johndoe123",style: TextStyle(fontWeight: FontWeight.bold),),
                
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Card(
              child: ListTile(
                title: Text("email",style: TextStyle(color: Colors.grey),),
                trailing: Text("johndoe@mail.com",style: TextStyle(fontWeight: FontWeight.bold),),
                
              ),
            ),
          ), Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Card(
              child: ListTile(
                title: Text("phone",style: TextStyle(color: Colors.grey),),
                trailing: Text("+1 23 456 789",style: TextStyle(fontWeight: FontWeight.bold),),
                
              ),
            ),
          ), Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Card(
              child: ListTile(
                title: Text("username",style: TextStyle(color: Colors.grey),),
                trailing: Text("johndoel123",style: TextStyle(fontWeight: FontWeight.bold),),
                
              ),
            ),
          ), Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Card(
              child: ListTile(
                title: Text("date of birth",style: TextStyle(color: Colors.grey),),
                trailing: Text("16/04/1998",style: TextStyle(fontWeight: FontWeight.bold),),
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
