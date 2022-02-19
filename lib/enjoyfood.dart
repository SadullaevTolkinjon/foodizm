import 'package:flutter/material.dart';
import 'getdeliver.dart';

class EnjoyFood extends StatefulWidget {
  const EnjoyFood({Key? key}) : super(key: key);

  @override
  _EnjoyFoodState createState() => _EnjoyFoodState();
}

class _EnjoyFoodState extends State<EnjoyFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            const Positioned(
              child: Image(
                image: NetworkImage(
                    "https://i.pinimg.com/564x/59/0a/3d/590a3d5219b6767853b8aba45dba0f64.jpg"),
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
                        "Enjoy your food",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Thanks for choosing",
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
                      padding:const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, right: 20.0),
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
                                        backgroundColor: Colors.orange.shade600,
                                        radius: 5,
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.grey.shade500,
                                      radius: 5,
                                    ),
                                  ],
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
                                  child:const Chip(
                                    backgroundColor: Color(0XFFF3AF0C),
                                    label: Text(
                                      "NEXT",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const GetDeliver();
                                    },),);
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
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.5), spreadRadius: 5,
                        blurRadius: 7,
                        offset:const Offset(0, 3),
                  ),],
                    borderRadius:const BorderRadius.vertical(
                      top: Radius.circular(45.0),
                    ),
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
