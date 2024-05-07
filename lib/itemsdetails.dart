import 'package:flutter/material.dart';

class ItemsDetails extends StatefulWidget {
  final data;
  const ItemsDetails({super.key, this.data});

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  bool onchanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    width: 15,
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(colors: [
                        Colors.white,
                        Color.fromARGB(255, 221, 221, 221),
                      ], end: Alignment.bottomLeft, begin: Alignment.topRight),
                    ),
                    alignment: Alignment.center,
                    child: Builder(builder: (context) {
                      return IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("homepage");
                        },
                        icon: const Icon(Icons.arrow_back),
                        iconSize: 30,
                      );
                    }),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 110),
                    child: Text(
                      "Product",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 115,
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(colors: [
                        Colors.white,
                        Color.fromARGB(255, 217, 216, 216),
                      ], end: Alignment.bottomLeft, begin: Alignment.topRight),
                    ),
                    alignment: Alignment.center,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          onchanged = !onchanged;
                          print(onchanged);
                          print("ccccccccccccccc");
                        });
                      },
                      icon: Icon((onchanged == true)
                          ? Icons.favorite
                          : Icons.favorite_border_outlined),
                      iconSize: 30,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                    height: 300, child: Image.asset(widget.data["imagename"])),
              ),
              Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                            width: 200,
                            child: Text(
                              widget.data["title"],
                              style: const TextStyle(fontSize: 20),
                            )),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        widget.data["price"],
                        style:
                            const TextStyle(color: Colors.green, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.1),
                  child: Text(
                    "Description",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 25, right: 5),
                child: SizedBox(
                  width: 1000,
                  height: 250,
                  child: ListView(
                    children: [
                      SizedBox(
                        width: 400,
                        child: Text(
                          widget.data["description"],
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    width: 300,
                    // height: 100,
                    child: ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text(
                          "Buy Now".toUpperCase(),
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ))),
              )
            ],
          )
        ],
      ),
    );
  }
}
