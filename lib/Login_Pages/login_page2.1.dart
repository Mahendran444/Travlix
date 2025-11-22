import 'package:flutter/material.dart';
import 'package:travlix/Login_Pages/trip_login.dart';
import 'package:travlix/Login_Pages/trip_password.dart';


class login21 extends StatelessWidget {
  const login21({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40,right: 360),
            child: IconButton(icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 20,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (builder) => TripLogin()));
              },),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25,left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  "Hey there,welcome back",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25),
                Text("Email", style: TextStyle(color: Colors.white, fontSize: 15)),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email address",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Password",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder) => forgotpass()));
                  },
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Let's go",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
