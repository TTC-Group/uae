import 'package:flutter/material.dart';
import 'package:uae/app_all_data/number_day_month.dart';
import 'package:uae/screen/home_page.dart';
import 'package:uae/screen/word_meaning.dart';
import 'package:uae/utills/allColors.dart';

class WordScreen extends StatefulWidget {
  List<String> btnName;

  WordScreen({Key? key, required this.btnName}) : super(key: key);

  @override
  _WordScreenState createState() => _WordScreenState();
}

NumberDayMonth _numberDayMonth = NumberDayMonth();

class _WordScreenState extends State<WordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("প্রয়োজনীয় শব্দার্থ"),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[

            for (int i = 0; i < btnName.length; i++)
              Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)
                          => WordMeaning(
                            title: 'দিন মাস বছর',
                            bnWord: _numberDayMonth.bnNDMList,
                            arWord: _numberDayMonth.arNDMList,
                            prWord: _numberDayMonth.prNDMList,
                          )),
                    );
                  },
                  child:  SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(child: Text(btnName[i])),
                  ),
                ),
              ),
          ],
        ));
  }
}
