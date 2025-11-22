import 'package:flutter/material.dart';
import '../model/travellerModel.dart';
import 'Bottom_pages/search_page.dart';

// Test

Widget travellerFavourite()
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          "Traveller's favourite destinations",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(height: 10),
      SizedBox(
          height: 210,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: trips.length,
            itemBuilder: (context, index) {
              final place = trips[index];
              return GestureDetector(
                onTap: () {

                  final getData = trips[index];

                  // Navigator.push(context, MaterialPageRoute(builder: (builder) => searchpage(getValue: getData,)));
                  // 👇 Handle click here
                  // print("Clicked on: ${place["title"]}");

                  // Example: Navigate to detail page
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) => DetailPage(place: place),
                  // ));
                },
                child: Container(
                  width: 250,
                  margin: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white10,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          place["image"]!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.black87, Colors.transparent],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                place["title"]!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                place["subtitle"]!,
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )
      ),
    ],
  );
}