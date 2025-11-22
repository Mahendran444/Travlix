import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../bottom_navigation/bottom_navigation.dart';
import 'login_page2.1.dart';
import 'login_page2.dart';


class TripLogin extends StatelessWidget {
  const TripLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> places = [
      {
        "title": "Chichen Itza, Cenote, and Valladolid Tour",
        "location": "Cancun, Mexico",
        "image": "assets/one.jpg",
      },
      {
        "title": "Empire State Building",
        "location": "New York City, United states",
        "image": "assets/second.jpg",
      },
      {
        "title": "Great Wall of China Adventure",
        "location": "Beijing, China",
        "image": "assets/third.jpg",
      },
      {
        "title": "Summer Pavilion",
        "location": "Singapore,Singapore",
        "image": "assets/four.jpg",
      },
      {
        "title": "Adiwana Suweta",
        "location": "Ubud,Indonesia",
        "image": "assets/five.jpg",
      },
      {
        "title": "World's Largest Dinosaur",
        "location": "Drumheller Canada",
        "image": "assets/six.jpg",
      },
      {
        "title": "Dubai Red Dunes ATV,Camels,\nStargazing & 5*BBQ AI Khayma C...",
        "location": "United Arab Emirates",
        "image": "assets/seven.jpg",
      },
    ];

    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: places.length,
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 50),
            ),
            itemBuilder: (context, index, realIndex) {
              final place = places[index];
              return Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(place["image"]!, fit: BoxFit.cover),

                  Container(color: Colors.black.withOpacity(0.35)),

                  Positioned(
                    top: 50,
                    left: 20,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          place["title"]!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              place["location"]!,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),

          Positioned(
            top: 40,
            right: 15,
            child: GestureDetector(
              onTap: () {},
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PG2()),
                  );
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Plan your best trips",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        minimumSize: const Size(double.infinity, 60,),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => login2()),
                        );
                      },
                      child: const Text(
                        "Create account",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ),
                    const SizedBox(height: 10),
                    OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        // MaterialPageRoute(builder: (builder) => GoogleSignInPage());
                      },
                      icon: const Icon(
                        Icons.g_mobiledata,
                        color: Colors.black,
                        size: 30,
                      ),
                      label: const Text(
                        "Continue with Google",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (builder) => login21()));
                      },
                      child: const Text(
                        "Have an account? Log in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      textAlign: TextAlign.center,
                      "By proceeding,you agree to our Terms of use and confirm you have read our Privacy and Cookie Statement.",
                      style: TextStyle(

                          color: Colors.white,
                          fontWeight: FontWeight.bold,fontSize: 13.5
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
