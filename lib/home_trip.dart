import 'package:flutter/material.dart';
import 'Home_pages/Bottom_pages/search_page.dart';
import 'Home_pages/explore.dart';
import 'Home_pages/hotels.dart';
import 'Home_pages/inspiration_nexttrip.dart';
import 'Home_pages/traveller_choice.dart';
import 'Home_pages/travellerfav.dart';


class Hometrip extends StatefulWidget {
  const Hometrip({super.key});

  @override
  State<Hometrip> createState() => _HometripState();
}

class _HometripState extends State<Hometrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 20),
                    child: Text(
                      "Where to?",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Mono',
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,right: 20),
                    child: Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
              child: TextField(
                readOnly: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => searchpage(getValue: {}),
                    ),
                  );
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  hintText: "Places to go, things to do, hotels...",
                  hintStyle: const TextStyle(color: Colors.white, fontSize: 18),
                  prefixIcon: const Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: Colors.white10,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white24,
                    child: Icon(
                      Icons.add_location_alt_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      " Looking for something\n nearby?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Allow location access",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
              ],
            ),
            SizedBox(height: 15),
            travellerFavourite(),
            explorethings(),
            travellerchoice(),
            inspirationnexttrip(),
            hotels(),
          ],
        ),
      ),
    );
  }
}
