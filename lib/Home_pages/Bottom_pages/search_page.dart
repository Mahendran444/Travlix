import 'package:flutter/material.dart';
import '../../bottom_navigation/bottom_navigation.dart';

class searchpage extends StatelessWidget {
  Map<String,String> getValue = {};
  searchpage({super.key, required this.getValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 10,top: 65),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 17,fontWeight: FontWeight.bold,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (builder) => PG2()));
                  },),
                Expanded(child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.black,
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.white,fontSize: 18),
                          prefixIcon: Icon(Icons.search_outlined,color: Colors.white,size: 25,),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 15)
                      ),
                    ),
                  ),
                ),
                )
              ],
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 0,
                  vertical: 12,
                ),
                child: Text(
                  "Popular",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 1,
              color: Colors.grey[800],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.near_me_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Nearby',
                    style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
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
