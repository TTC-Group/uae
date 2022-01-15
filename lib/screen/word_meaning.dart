import 'package:flutter/material.dart';
import 'package:uae/helper/menu_widget.dart';

class WordMeaning extends StatelessWidget {
  String title;
  List<String> bnWord;
  List<String> arWord;
  List<String> prWord;

  WordMeaning(
      {Key? key,
      required this.bnWord,
        required this.title,
      required this.arWord,
      required this.prWord})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: allColors.appcontColor,
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: Card(
              margin: EdgeInsets.all(10),
              color: Colors.purple.shade50,
              child: Row(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 3.3,
                      child: Text('বাংলা')),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 3.3,
                      child: Text( 'আরবি' )),
                  Text('উচ্চারণ'),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: bnWord.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width / 3.3,
                          child: Text(bnWord[index]??"")),
                      SizedBox(
                          width: MediaQuery.of(context).size.width / 3.3,
                          child: Text(arWord[index]??"")),
                      Text(prWord[index]??""),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
