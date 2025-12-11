import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  CvPage(),
    );
  }
}

class CvPage extends StatelessWidget {
   CvPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFECEFF1),
      appBar: AppBar(
        title:  Text(
          'CV',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor:  Color(0xFF1E88E5),
        centerTitle: false,

      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color:  Color(0xFF607D8B),
          padding:  EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/me.jpg'),
              ),
              SizedBox(height: 10),
               Text(
                'ali ahmed altmemey',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
               Text(
                'devlper',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
               SizedBox(height: 20),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Email', style: TextStyle(color: Colors.white)),
                  Text('altmimialibnali@gmail.com',
                      style: TextStyle(color: Colors.white)),
                ],
              ),
               SizedBox(height: 5),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Phone', style: TextStyle(color: Colors.white)),
                  Text('770088496', style: TextStyle(color: Colors.white)),
                ],
              ),

               Divider(color: Color.fromARGB(255, 255, 255, 255)),
              //const SizedBox(height: 10),
               Text(
                'Skills',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
               Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('- Play Football', style: TextStyle(color: Colors.white)),
                    Text('- Read Books', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
               Divider(color: Color.fromARGB(255, 255, 255, 255)),
               Text(
                'Academic Qualifications',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
               SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('- General Secondary Education Certificate', style: TextStyle(color: Colors.white))
                  ],
                ),
              ),

              Divider(color: Color.fromARGB(255, 255, 255, 255)),
               Text(
                'Practical Qualifications',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('- Personal Skill Development', style: TextStyle(color: Colors.white)),
                    Text('- Internship in the IT Department', style: TextStyle(color: Colors.white)) ,
                    Text('- Development Applications Websites', style: TextStyle(color: Colors.white)) ,



                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}