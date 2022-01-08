import 'package:flutter/material.dart';
class SentenceScreen extends StatefulWidget {
  List<String> tempListBn;
  List<String> tempListAr;
  List<String> tempListPr;
   SentenceScreen({Key? key,
  required this.tempListBn,
  required this.tempListAr,
  required this.tempListPr,
  })
      : super(key: key);

  @override
  _SentenceScreenState createState() => _SentenceScreenState();
}

class _SentenceScreenState extends State<SentenceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Text("sentence"),
          Text(widget.tempListAr[1]),
        ],
      ),
    );

  }
}
