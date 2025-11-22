import 'package:flutter/material.dart';
import 'package:travlix/Home_pages/Bottom_pages/trip_review.dart';

class reviewbutton extends StatelessWidget {
  const reviewbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 360),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 17,
                  fontWeight: FontWeight.bold,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) => Review()),
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Text(
              "What would you like\nto review?",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 48,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color(0xFF222222),
                border: Border.all(color: Color(0xFF013220), width: 2),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 11),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
