import 'package:flutter/material.dart';
import 'package:travlix/Home_pages/Bottom_pages/trip_preferences.dart';
import 'package:travlix/Home_pages/Bottom_pages/trip_support.dart';

import '../../Login_Pages/login_page2.1.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.black,
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.grey,
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: 4,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite_border),
      //       label: "Trips",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.rate_review_outlined),
      //       label: "Review",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_outline),
      //       label: "Account",
      //     ),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                "Account",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade800, width: 1.2),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "\nKickstart your trip planning",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      textAlign: TextAlign.center,
                      "Get travel recs, save and share faves,\nand organise trip ideas—all in one spot.",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                        height: 1.4,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(context: context,backgroundColor: Colors.transparent,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20)),
                          ),
                          builder: (context1){
                            return Container(
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),
                                  IconButton(icon: Icon(Icons.close,color: Colors.white,size: 30,),
                                    onPressed: (){

                                    },),
                                  SizedBox(height: 30,),
                                  Center(child: Text(textAlign: TextAlign.center,"Sign in and plan your next\nadventure",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                                  SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        minimumSize: const Size(double.infinity, 60,),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (builder) => login21()),
                                        );
                                      },
                                      child: const Text(
                                        "Create account",
                                        style: TextStyle(color: Colors.black, fontSize: 17),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: OutlinedButton.icon(
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor:  Color(0xFF013220),
                                        minimumSize: const Size(double.infinity, 60),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.g_mobiledata,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                      label: const Text(
                                        "Continue with Google",
                                        style: TextStyle(color: Colors.white, fontSize: 17),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Center(
                                    child: TextButton(
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
                                  ),
                                  const SizedBox(height: 20),
                                  Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "By proceeding,you agree to our Terms of use and confirm \nyou have read our Privacy and Cookie Statement.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,fontSize: 13.5
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black87,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 120,
                          vertical: 12,
                        ),
                      ),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Settings",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              ListTile(
                leading: Icon(Icons.settings_outlined, color: Colors.white),
                title: Text(
                  "Preferences",
                  style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,fontWeight: FontWeight.bold,
                  color: Colors.white,
                  size: 16,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) => preferences()));
                },
              ),
              SizedBox(height: 6),
              Divider(color:Color(0xFF013220)),
              ListTile(
                leading: Icon(Icons.help_outline, color: Colors.white,fontWeight: FontWeight.bold,),
                title: Text(
                  "Support",
                  style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 16,
                ),
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (builder) => supportpage()));},
              ),
              Divider(color:Color(0xFF013220)),
              SizedBox(height: 30),
              Text(
                "Version: v64.9 build 250929011\nDevice ID: 7d01e4b9-55fa-4e4c-803f-d982ce9dc534",
                style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
