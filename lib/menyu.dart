import 'package:flutter/material.dart';
import 'package:foodizmexam/special.dart';
import 'database.dart';

class Menyu extends StatefulWidget {
  Menyu({
    Key? key,
  }) : super(key: key);

  @override
  _MenyuState createState() => _MenyuState();
}

class _MenyuState extends State<Menyu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.grid_view,
                      size: 40.0,
                      color: Colors.amber,
                    ),
                  ),
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.vhv.rs/dpng/d/559-5593203_grocery-bag-icon-hd-png-download.png"),
                    radius: 20.0,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Foodizm",
                      style: TextStyle(
                          color: Color(0XFF444444),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "MENU",
                    style: TextStyle(
                        color: Color(0XFF4F4F4F),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Container(
                height: 150.0,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, mainAxisExtent: 100),
                  itemBuilder: (context, index) {
                    return InkWell(
                        child: Container(
                          height: 100,
                          margin: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      foods[index]['icon'].toString()),
                                  radius: 30.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child:
                                    Text(foods[index]["iconnomlar"].toString()),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                )
                              ],
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              ),
                              color: Color(0XFFF6F6F8)),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Special(foodlar: foods[index],);
                          }));
                        });
                  },
                  itemCount: foods.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Container(
                height: 550,
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5)
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, mainAxisExtent: 250),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://key0.cc/images/preview/102989_f25cef08e65111362cfcf72bfce68b3b.png"),
                                radius: 65.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text(
                                "Lozano Pizza",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text(
                                "128 \$",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
