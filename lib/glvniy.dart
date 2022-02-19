import 'package:flutter/material.dart';
import 'menyu.dart';

class GlavniyPage extends StatefulWidget {
  const GlavniyPage({Key? key}) : super(key: key);

  @override
  _GlavniyPageState createState() => _GlavniyPageState();
}

class _GlavniyPageState extends State<GlavniyPage> {
  final _keycontroller = GlobalKey<FormState>();
  final _namecontroller = TextEditingController();
  var _counter = 0;
  var _counter2 = 0;
  var _counter3 = 0;
  List ranglar = [
    Color(0XFFF3AE0C),
    Colors.blue,
    Colors.redAccent,
    Colors.green,
    Colors.cyan,
    Colors.yellow
  ];
  List nomlar = [
    "Breakfast",
    "Brunch",
    "Dinner",
    "Tea",
    "Launch",
    "Midnight Snack"
  ];
  List rasmlar = [
    "https://pngset.com/images/full-breakfast-food-meal-dish-burger-transparent-png-1044712.png",
    "https://images.rawpixel.com/image_png_1000/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvcGYtczc5LW1vbmlrYS1ncmFia293c2thLWZyZW5jaC10b2FzdC02LTAxXzEucG5n.png?s=_0LKM2m5cWew1MuljU4dARfx1R2aKrhWfXMqQFULJi8",
    "https://banner2.cleanpng.com/20190716/uws/kisspng-vegetarian-cuisine-health-food-meal-delivery-grass-fed-beef-taco-hash-snap-kitchen-gluten-f-5d2d5e0a900e79.4151524815632542825901.jpg",
    "https://w0.pngwave.com/png/897/721/green-tea-coffee-teacup-tea-png-clip-art.png",
    "https://www.aheadofthyme.com/wp-content/uploads/2016/03/chicken-garden-salad-with-ranch-dressing-683x1024.jpg",
    "https://e7.pngegg.com/pngimages/439/661/png-clipart-curry-vegetarian-cuisine-cauliflower-sweet-and-sour-free-cauliflower-curry-creative-pull-free-logo-design-template-food.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Menyu();
                          },
                        ),
                      );
                    },
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
                      "Welcome to",
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
                    "FOODIZM",
                    style: TextStyle(
                        color: Color(0XFF4F4F4F),
                        fontSize: 32.0,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0),
              child: Form(
                key: _keycontroller,
                child: TextFormField(
                  controller: _namecontroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.0),
                      ),
                    ),
                    hintText: "search",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Categories",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Container(
                height: 180,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        Positioned(
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                                color: ranglar[index],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 65.0),
                                  child: Text(
                                    "${nomlar[index]}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          left: 10.0,
                          top: 40.0,
                          right: 10.0,
                        ),
                        Positioned(
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              rasmlar[index],
                            ),
                            radius: 55.0,
                          ),
                          left: 10.0,
                          right: 20.0,
                        ),
                      ],
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: rasmlar.length,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Deals",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                height: 280.0,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 300.0, crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200.0,
                      margin: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  height: 140.0,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://sherepunjab.ge/wp-content/uploads/2020/08/Chicken_Biryani.jpg"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Chip(
                                    label: Text(
                                      "-23 %",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    backgroundColor: Color(0XFFE66D68),
                                  ),
                                  top: 0,
                                  right: 0,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Full Chicken Biryani",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0, top: 10),
                                  child: Text(
                                    "100 \$",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 25.0, top: 10),
                                  child: Text(
                                    "serves 2 guests",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, left: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 37.0,
                                  width: 125,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            _counter -= 1;
                                            if (_counter < 0) {
                                              _counter = 0;
                                            }
                                            setState(() {});
                                          },
                                          icon: const Icon(Icons.remove)),
                                      Text("$_counter"),
                                      IconButton(
                                          onPressed: () {
                                            _counter += 1;
                                            setState(() {});
                                          },
                                          icon: const Icon(Icons.add))
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    height: 37.0,
                                    width: 125,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [Text("Add to card")],
                                    ),
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                        color: Colors.amber),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Popular",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 280.0,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 300.0, crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200.0,
                      margin: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  height: 140.0,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://innovate.mygov.in/wp-content/uploads/2021/06/mygov162254315510122543.jpeg"),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  child: Chip(
                                    label: Text(
                                      "-18 %",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    backgroundColor: Color(0XFFE66D68),
                                  ),
                                  top: 0,
                                  right: 0,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Full Chicken Biryani",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0, top: 10),
                                  child: Text(
                                    "100 \$",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 25.0, top: 10),
                                  child: Text(
                                    "serves 2 guests",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, left: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 37.0,
                                  width: 125,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            _counter2 -= 1;
                                            if (_counter2 < 0) {
                                              _counter2 = 0;
                                            }
                                            setState(() {});
                                          },
                                          icon: const Icon(Icons.remove)),
                                      Text("$_counter2"),
                                      IconButton(
                                          onPressed: () {
                                            _counter2 += 1;
                                            setState(() {});
                                          },
                                          icon: const Icon(Icons.add))
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    height: 37.0,
                                    width: 125,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [Text("Add to card")],
                                    ),
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                        color: Colors.amber),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Latest dishes",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 280.0,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 300.0, crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200.0,
                      margin: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  height: 140.0,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://kfoods.com/images1/newrecipeicon/chicken-biryani_3.jpg"),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  child: Chip(
                                    label: Text(
                                      "-14 %",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    backgroundColor: Color(0XFFE66D68),
                                  ),
                                  top: 0,
                                  right: 0,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Full Chicken Biryani",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0, top: 10),
                                  child: Text(
                                    "100 \$",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 25.0, top: 10),
                                  child: Text(
                                    "serves 2 guests",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, left: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 37.0,
                                  width: 125,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            _counter3 -= 1;
                                            if (_counter3 < 0) {
                                              _counter3 = 0;
                                            }
                                            setState(() {});
                                          },
                                          icon: const Icon(Icons.remove)),
                                      Text("$_counter3"),
                                      IconButton(
                                          onPressed: () {
                                            _counter3 += 1;
                                            setState(() {});
                                          },
                                          icon: const Icon(Icons.add))
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    height: 37.0,
                                    width: 125,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [Text("Add to card")],
                                    ),
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                        color: Colors.amber),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
