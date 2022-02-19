import 'package:flutter/material.dart';
import 'welcomefoodizm.dart';

class GetDeliver extends StatefulWidget {
  const GetDeliver({Key? key}) : super(key: key);

  @override
  _GetDeliverState createState() => _GetDeliverState();
}

class _GetDeliverState extends State<GetDeliver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:  Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            const Positioned.fill(
              child: Image(
                image: NetworkImage(
                    "https://www.odtap.com/wp-content/uploads/2018/10/food-delivery.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 600),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 35.0),
                      child: Text(
                        "Get Delivered Fastly",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Track your food",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet,",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 10.0),
                      child: Text(
                        "consectetur adipiscing elit",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, right: 20.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.grey.shade500,
                                          radius: 5,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.grey.shade500,
                                          radius: 5,
                                        ),
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.orange.shade600,
                                        radius: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 90.0, right: 10.0),
                                child: InkWell(
                                  child: const Chip(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      backgroundColor: Color(0XFFF3AF0C),
                                      label: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                      )),
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return WelcomeFoodizm();
                                    }));
                                  },
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                height: 320,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(45.0),
                    ),
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),),
    );
  }
 
}
