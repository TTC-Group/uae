import 'package:flutter/material.dart';
class WordScreen extends StatefulWidget {
  List<String> btnName;
   WordScreen({Key? key,
  required this.btnName
  }) : super(key: key);

  @override
  _WordScreenState createState() => _WordScreenState();
}

class _WordScreenState extends State<WordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Text("word"),
        ],
      ),
    );
  }
}
