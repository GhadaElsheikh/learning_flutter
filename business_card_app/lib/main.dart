import 'package:flutter/material.dart';

void main() {
  runApp(BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF2B475E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 122,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/tharwat.png'),
                radius: 120,
              ),
            ),
            Text(
              'Tharwat Samy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6c8090),
              ),
            ),
            Divider(
              color: Color(0xFF6c8090),
              indent: 27,
              endIndent: 27,
              height: 15,
            ),
            Card(
              margin: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Color(0xFF2B475E),
                  size: 36,
                ),
                title: Text(
                  '(+20) 123546779',
                  style: TextStyle(fontSize: 26),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Color(0xFF2B475E),
                  size: 36,
                ),
                title: Text(
                  'tharwatsamy@gmail.com',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
