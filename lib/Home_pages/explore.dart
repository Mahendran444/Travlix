import 'package:flutter/material.dart';

Widget explorethings()
{
  return Padding(
    padding: const EdgeInsets.all(30),
    child: Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Image(
              image: AssetImage("assets/para.jpg"),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              bottom: 100,
              left: 13,
              child: Text(
                "Book the best things to do\nout there",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 15,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                    side: const BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 16,
                  ),
                  child: Text(
                    "Explore now",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}