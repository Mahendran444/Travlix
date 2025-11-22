import 'package:flutter/material.dart';
import 'package:travlix/Home_pages/tophotels.dart';

import '../model/hotels_model.dart';

Widget hotels()
{return Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        "Traveller's Choice",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 20, top: 5),
      child: Text(
        "Top-rated hotels worldwide",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    ),
    SizedBox(height: 10),
    Container(
      height: 345,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hotel.length,
        itemBuilder: (context, index) {
          final place = hotel[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => hoteldetail(place: place),
                ),
              );
            },
            child: Container(
              width: 155,
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          place["image"] ?? "",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 200,
                        ),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.black,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    place["tittle"] ?? "",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        place["ratings"] ?? "",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 4),
                      Row(
                        children: List.generate(
                          5,
                              (index) => Icon(
                            Icons.circle,
                            color: Colors.green,
                            size: 13, // adjust size
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        place["review"] ?? "",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    place["price"] ?? "",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  ],
);
}