import 'package:flutter/material.dart';
import '../../Login_Pages/login_page2.1.dart';
import '../../Login_Pages/login_page2.dart';

class signinbottomsheet extends StatelessWidget {
  const signinbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Icon(Icons.close,color: Colors.white,size: 15),
          Center(child: Text("Sign in and plan your next\nadventure",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
          SizedBox(height: 15),
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
            onPressed: () {},
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
            "By proceeding,you agree to our Terms of use and confirm \n        you have read our Privacy and Cookie Statement.",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,fontSize: 13.5
            ),
          )
        ],
      ),
    );
  }
}
