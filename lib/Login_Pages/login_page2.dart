import 'package:flutter/material.dart';
import 'package:travlix/Login_Pages/trip_login.dart';


class login2 extends StatelessWidget {
  const login2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40,right: 360),
            child: IconButton(icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 20,fontWeight: FontWeight.bold,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (builder) => TripLogin()));
              },),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Text("Join the Tripadvisor\ncommunity",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text("Email",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email address",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Password",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.white,size: 20,),
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                Text("x At least 10 characters",style: TextStyle(color: Colors.white,fontSize: 15),),
                SizedBox(height: 10,),
                Text("x Contain a special character",style: TextStyle(color: Colors.white,fontSize: 15),),
                SizedBox(height: 35,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Let's go",style: TextStyle(color: Colors.black,fontSize: 17),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
