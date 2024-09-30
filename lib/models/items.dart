import 'package:flutter/material.dart';

class item extends StatefulWidget {
  const item({Key? key}) : super(key: key);

  @override
  State<item> createState() => _itemState();
}

class _itemState extends State<item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Living Room",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                      Icon(Icons.arrow_downward_sharp),
                    ],
                  ),
                ),
                color: Colors.grey,
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Furniture',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "L Type Sofa",
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        "Small | Leather",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text("1")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "L Type Sofa",
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        "Small | Leather",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text("1")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Single Seater Sofa",
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        "Large | Leather",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text("1")
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Tea Table",
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        "Medium | Wooden",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text("2")
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bed Room",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_downward_sharp))
                    ],
                  ),
                ),
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Custom Items",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_downward_sharp))
                  ],
                ),
                color: Colors.grey,
              ),
            ),
            Text(
              "Null",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
