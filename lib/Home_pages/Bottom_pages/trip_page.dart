import 'package:flutter/material.dart';
import '../../Login_Pages/login_page2.1.dart';

class Trips extends StatelessWidget {
  const Trips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 35,),
            Text("My trips",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
            SizedBox(height: 35,),
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade800, width: 1.2),
              ),
              child: Column(
                children: [
                  SizedBox(height: 120,),
                  Text("Plan your way with Trips...",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(height: 10,),
                  Text("Build a trip with your saves or use Al to get\n  custom recommendations, collaborate\nwith friends, and organise your trip ideas.",
                    style:TextStyle(color: Colors.white,fontSize: 16),),
                  SizedBox(height: 20,),
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
                                Center(child: Text("Sign in and plan your next\n               adventure",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
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
                                    "By proceeding,you agree to our Terms of use and confirm \n        you have read our Privacy and Cookie Statement.",
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

            )
          ],
        ),
      ),
    );
  }
}
