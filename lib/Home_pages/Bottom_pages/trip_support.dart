import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travlix/Home_pages/Bottom_pages/trip_account.dart';

class supportpage extends StatelessWidget {
  const supportpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Center(
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => AccountPage()),
                        );
                      },
                    ),
                    SizedBox(width: 110,),
                    Text("Support",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 23,),
            ListTile(
              title: Text("Help centre",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
              trailing: Icon(CupertinoIcons.arrow_up_right,size: 18,fontWeight: FontWeight.bold,color: Colors.white,),
              onTap: (){},
            ),
            Divider(color:Color(0xFF013220)),
            ListTile(
              title: Text("Privacy policy",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
              trailing: Icon(CupertinoIcons.arrow_up_right,size: 18,fontWeight: FontWeight.bold,color: Colors.white,),
              onTap: (){},
            ),
            Divider(color: Color(0xFF013220)),
            ListTile(
              title: Text('Terms of use',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              trailing: Icon(CupertinoIcons.arrow_up_right,size: 18,fontWeight: FontWeight.bold,color: Colors.white,),
              onTap: (){},
            ),
            Divider(color: Color(0xFF013220)),
            ListTile(
              title: Text("Open source licences",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              trailing: Icon(CupertinoIcons.arrow_up_right,size: 18,fontWeight: FontWeight.bold,color: Colors.white,),
              onTap: (){},
            ),
            Divider(color:Color(0xFF013220))
          ],
        ),
      ),
    );
  }
}

