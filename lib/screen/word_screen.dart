import 'package:flutter/material.dart';
import 'package:uae/app_all_data/basar_jinispotro_posak.dart';
import 'package:uae/app_all_data/food_and_fruits.dart';
import 'package:uae/app_all_data/number_day_month.dart';
import 'package:uae/app_all_data/pronoun.dart';
import 'package:uae/app_all_data/ranna_ghorer.dart';
import 'package:uae/helper/menu_widget.dart';
import 'package:uae/screen/home_page.dart';
import 'package:uae/screen/word_meaning.dart';
import 'package:uae/utills/allColors.dart';

class WordScreen extends StatefulWidget {
  List<String> btnName;

  WordScreen({Key? key, required this.btnName}) : super(key: key);

  @override
  _WordScreenState createState() => _WordScreenState();
}
List<String> wordBtnName = [
  'দিন মাস বছর',
  "বাসার জিনিসপত্র ও পোশাক",
  "খাদ্য ও ফল",
  "সর্বনাম",
  "রান্না ঘরের জিনিসপত্র",
];
List<dynamic> allObjList=[
  _numberDayMonth,
  _basarjinis_potro_posak,
  _foodAndFruits,
  _pronoun,
  _rannaGhor
];
NumberDayMonth _numberDayMonth = NumberDayMonth();
FoodAndFruits _foodAndFruits= FoodAndFruits();
Pronoun _pronoun=Pronoun();
RannaGhor _rannaGhor=RannaGhor();
Basarjinis_potro_posak _basarjinis_potro_posak = Basarjinis_potro_posak();

class _WordScreenState extends State<WordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: allColors.appcontColor,
          title: Text("প্রয়োজনীয় শব্দার্থ"),
          centerTitle: true,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[

            for (int i = 0; i < wordBtnName.length; i++)
              Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    navigate(
                        WordMeaning(
                        title: wordBtnName[i],
                        bnWord: allObjList[i].bnList,
                        arWord: allObjList[i].arList,
                        prWord: allObjList[i].prList
                    )
                    );
                  },
                  child:  Container(
                    width: 300,
                    height: 100,
                    child: Center(
                        child: Text(wordBtnName[i],
                        textAlign: TextAlign.center,)),
                  ),
                ),
              ),
          ],
        ));
  }
  void navigate(className){
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context)
          => className
      ),
    );
  }
}
