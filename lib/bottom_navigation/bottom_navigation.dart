import 'package:flutter/material.dart';

import '../Home_pages/Bottom_pages/search_page.dart';
import '../Home_pages/Bottom_pages/trip_account.dart';
import '../Home_pages/Bottom_pages/trip_page.dart';
import '../Home_pages/Bottom_pages/trip_review.dart';
import '../home_trip.dart';

class PG2 extends StatefulWidget {
  const PG2({Key? key}) : super(key: key);

  @override
  State<PG2> createState() => _PG2State();
}

class _PG2State extends State<PG2> {
  int _a = 0;

  final List<Widget> pages = [
    Hometrip(),
    searchpage(getValue: {}),
    Trips(),
    Review(),
    AccountPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _a = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_a],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[700],
        currentIndex: _a,
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Trips",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline),
            label: "Review",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
