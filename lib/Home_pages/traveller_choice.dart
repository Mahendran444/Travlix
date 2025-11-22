import 'package:flutter/material.dart';

import 'bucket1.dart';
import '../model/traveller_choice_model.dart';


Widget travellerchoice()
{
  return Column(
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
          "Bucket list Experience",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      SizedBox(height: 5,),
      Container(
        height: 345,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: bucket.length,
          itemBuilder: (context, index) {
            final place = bucket[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TourDetailPage(place: place),
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
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(width: 5),
                        Row(
                          children: List.generate(
                            5,
                                (index) => const Icon(
                              Icons.circle,
                              color: Colors.green,
                              size: 10,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          place["review"] ?? "",
                          style: const TextStyle(color: Colors.white),
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