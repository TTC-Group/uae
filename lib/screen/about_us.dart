import 'package:flutter/material.dart';
import 'package:uae/helper/menu_widget.dart';

class AboutUs extends StatelessWidget {
  AboutUs({Key? key}) : super(key: key);

  List<String> names = [
    "A.K.M Shahidul Islam",
    "Jannatul Ferdous",
    "Abdul Basir",
    "Abdul Basir",
    "Abdul Basir",
    "Abdul Basir",
  ];

  List<String> positions = [
    'Principal of GTTC',
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
        backgroundColor: allColors.appcontColor,
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
                    elevation: 3.0,
                    child: Container(
                      height:200,
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height:80,
                                width: 100,
                                child: Image.asset(
                                  profileImages[i], fit: BoxFit.cover,),
                              ),
                            ),
                            Text(
                              names[i],
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              positions[i],
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
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
