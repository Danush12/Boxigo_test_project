import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              title: const Text(
                "Leads",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: const Icon(Icons.search),
              bottom: const TabBar(
                indicator: ShapeDecoration(
                  shape: CircleBorder(),
                ),
                labelColor: Colors.red,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'New',
                  ),
                  Tab(
                    text: 'Follow up',
                  ),
                  Tab(
                    text: 'Booked',
                  )
                ],
              )),
        ));
  }
}
