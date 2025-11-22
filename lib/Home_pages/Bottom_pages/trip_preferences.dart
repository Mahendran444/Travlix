import 'package:flutter/material.dart';
import 'package:travlix/Home_pages/Bottom_pages/trip_account.dart';

class preferences extends StatelessWidget {
  const preferences({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 190),
              child: IconButton(
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
            ),
            SizedBox(height: 15),
            Text(
              "Preferences",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Text(
                "Language",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              title: Text(
                textAlign: TextAlign.end,
                "English(United\nkingdom)",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              onTap: (){},
            ),
            SizedBox(height: 10),
            Divider(color:Color(0xFF013220)),
            ListTile(
              leading: Text(
                "Currency",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              title: Text(
                textAlign: TextAlign.end,
                "British Pound",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              onTap: (){},
            ),
            Divider(color: Color(0xFF013220)),
            ListTile(
              leading: Text(
                "Units",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              title: Text(
                textAlign: TextAlign.end,
                "Kilometers/\nMeters",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              onTap: (){},
            ),
            SizedBox(height: 4),
            Divider(color: Color(0xFF013220)),
            ListTile(
              leading: Text(
                "Notification",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              onTap: (){},
            ),
            Divider(color: Color(0xFF013220)),
          ],
        ),
      ),
    );
  }
}
