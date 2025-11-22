import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:travlix/Home_pages/Bottom_pages/review_button.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Text(
                "Review",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "No reviews yet",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "You have not written any reviews yet, get\nstarted!",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => reviewbutton()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF013220),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                          side: const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 13),
                        child: Text(
                          "Write a review",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Replace UploadImagePage() with your real upload widget if you have one.
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => UploadImagePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF013220),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                          side: const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 13),
                        child: Text(
                          "Upload a photo",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 600,
                    child: Image.asset("assets/review.jpg", fit: BoxFit.cover),
                  ),
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          "We want you to\nwrite us a review",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            height: 1.1,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Because who else would we turn to for travel advice?",
                          style: TextStyle(color: Colors.white70, fontSize: 15),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const Text(
                      "Is Tripadvisor missing a place?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Tell us about it so we can improve what we show.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (b) => AddPlacePage()),
                        );
                      },
                      icon: const Icon(
                        Icons.add_location_alt_outlined,
                        color: Colors.white,
                      ),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 14,
                        ),
                        child: Text(
                          "Add a missing place",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF013220),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                          side: const BorderSide(color: Colors.white, width: 2),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: SpeedDial(
        direction: SpeedDialDirection.up,
        icon: Icons.add,
        activeIcon: Icons.close,

        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        activeBackgroundColor: Colors.white,
        activeForegroundColor: Colors.black,
        shape: const CircleBorder(),

        overlayColor: Colors.black,
        overlayOpacity: 0.4,

        spacing: 12,
        spaceBetweenChildren: 8,

        children: [
          SpeedDialChild(
            child: const Icon(Icons.photo),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            label: 'Upload a photo',
            labelStyle: const TextStyle(color: Colors.white, fontSize: 16),
            labelBackgroundColor: Colors.black54,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (b) => AddPlacePage()),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.edit),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            label: 'Write a review',
            labelStyle: const TextStyle(color: Colors.white, fontSize: 16),
            labelBackgroundColor: Colors.black54,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (b) => reviewbutton()),
              );
            },
          ),

          SpeedDialChild(
            child: const Icon(Icons.location_on_outlined),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            label: 'Add a place',
            labelStyle: const TextStyle(color: Colors.white, fontSize: 16),
            labelBackgroundColor: Colors.black54,
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (b) => UploadImagePage()),
              // );
            },
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
class AddPlacePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add a place')),
      body: const Center(child: Text('Add place page - replace with real page')),
    );
  }
}

class UploadImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Upload a photo')),
      body: const Center(child: Text('Upload image page - replace with real page')),
    );
  }
}
