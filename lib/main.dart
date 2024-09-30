import 'dart:convert';
import 'package:test_project/models/customer_estimate_flow.dart';
import 'package:test_project/models/estimate.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_project/models/floor_info.dart';
import 'package:test_project/models/items.dart';
import 'package:test_project/navigator/home.dart';
import 'package:test_project/navigator/tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Estimate> _customerEstimateFlows = [];

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    try {
      final customerEstimateFlow = await _getEstimateFlow();
      _customerEstimateFlows = customerEstimateFlow.estimates ?? [];
    } catch (e) {}
    setState(() {});
  }

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
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xfff2aaa4),
            title: const Text(
              'Leads',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            actions: [
              const Icon(Icons.notifications),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              )
            ],
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'New',
                ),
                Tab(
                  text: 'Followup',
                ),
                Tab(
                  text: 'Booked',
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: _navi,
            currentIndex: 1,
            selectedItemColor: Colors.redAccent,
            unselectedItemColor: Colors.black,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
          ),
          body: ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final estimate = _customerEstimateFlows.elementAt(index);
              return ListTile(
                isThreeLine: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Bangalore",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                    Text(
                      '${estimate.estimateId}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Moving From: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '${estimate.movingFrom}',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.home,
                          semanticLabel: '2 BHK',
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.brush,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.local_activity,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Moving To: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '${estimate.movingTo}',
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Moving on: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '${estimate.movingOn}',
                          ),
                          const TextSpan(text: ' days'),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (index) => const tab()));
                          },
                          child: Container(
                            width: 150,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.red)),
                            child: const Center(
                                child: Text(
                              "View Details",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 40,
                          color: Colors.red,
                          child: const Center(
                            child: Text(
                              "Submit Quote",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
            itemCount: _customerEstimateFlows.length,
          )),
    );
  }
}

Future<CustomerEstimateFlow> _getEstimateFlow() async {
  final customerEstimateRequest = Uri.https(_baseUrl, '/sample-data');

  final customerEstimateResponse = await http.get(
    customerEstimateRequest,
    headers: {
      'Content-Type': "application/json",
    },
  );

  print(customerEstimateResponse.statusCode);

  if (customerEstimateResponse.statusCode != 200) {
    throw Exception('Failed to load customer estimate flow');
  }
  print(customerEstimateResponse.body);
  final customerEstimateJson = jsonDecode(
    customerEstimateResponse.body,
  ) as Map<String, dynamic>;

  if (!customerEstimateJson.containsKey('Customer_Estimate_Flow')) {
    throw Exception('Failed to load customer estimate flow');
  }

  return CustomerEstimateFlow.fromJson(customerEstimateJson);
}

//const _baseUrl = 'test.api.boxigo.in';
const _baseUrl = 'boxigo-7zhf.onrender.com';
