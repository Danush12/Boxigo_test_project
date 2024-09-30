import 'package:flutter/material.dart';
import 'package:test_project/models/floor_info.dart';
import 'package:test_project/models/items.dart';

class tab extends StatefulWidget {
  const tab({Key? key}) : super(key: key);

  @override
  State<tab> createState() => _tabState();
}

class _tabState extends State<tab> {
  final List<BottomNavigationBarItem> _navi = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Leads'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.calendar_month), label: 'Tasks'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.circle_notifications), label: 'Reports'),
    const BottomNavigationBarItem(icon: Icon(Icons.more), label: 'more')
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: _navi,
            currentIndex: 1,
            selectedItemColor: Colors.redAccent,
            unselectedItemColor: Colors.black,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
          ),
          appBar: AppBar(
              title: const Text(
                "New Leads",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              actions: [
                const Icon(Icons.notifications),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Icon(Icons.search),
                )
              ],
              bottom: const TabBar(
                indicator: ShapeDecoration(
                  shape: CircleBorder(),
                ),
                labelColor: Colors.red,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'Items',
                  ),
                  Tab(
                    text: ' Floor Info',
                  ),
                  Tab(
                    text: 'Send Quote',
                  )
                ],
              )),
          body: TabBarView(children: [
            const item(),
            const floor(),
            Container(
              color: const Color(0x74c85148),
              height: 199,
              width: 2019,
              child: const Center(
                  child: Text(
                "Update soon",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
            ),
          ]),
        ));
  }
}
