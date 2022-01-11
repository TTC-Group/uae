import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  AboutUs({Key? key}) : super(key: key);

  List<String> names = [
    "Sir",
    "Mam",
    "Abdul Basir",
    "Abdul Basir",
    "Abdul Basir",
    "Abdul Basir",
  ];

  List<String> positions = [
    'Planner',
    'Instructor',
    'Junior Flutter Developer',
    'Junior Flutter Developer',
    'Junior Flutter Developer',
    'Junior Flutter Developer',
  ];

  List<String> profileImages = [
    'assets/about.jpg',
    'assets/about.jpg',
    'assets/basir.png',
    'assets/about.jpg',
    'assets/about.jpg',
    'assets/about.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(5),
              primary: false,
              crossAxisCount: 2,
              children: <Widget>[
                for (int i = 0; i < names.length; i++)
                  Card(
                    child: Column(
                      children: [
                        Image.asset(profileImages[i], fit: BoxFit.cover,),
                        Text(
                          names[i],
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          positions[i],
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
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
