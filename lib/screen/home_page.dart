import 'package:flutter/material.dart';
import 'package:uae/screen/translator.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute
                      (builder: (context)=>
                    LangTranslator()));
              },
              child: Text("Translator"))
        ],
      ),
    );
  }
}
