import 'package:flutter/material.dart';

class SentenceScreen extends StatefulWidget {
  String title;
  List<String> tempListBn;
  List<String> tempListAr;
  List<String> tempListPr;

  SentenceScreen({
    Key? key,
    required this.title,
    required this.tempListBn,
    required this.tempListAr,
    required this.tempListPr,
  }) : super(key: key);

  @override
  _SentenceScreenState createState() => _SentenceScreenState();
}

class _SentenceScreenState extends State<SentenceScreen> {
  @override
  Widget build(BuildContext context) {
    print("Suha ar"+widget.tempListAr.length.toString());
    print("Suha bn"+widget.tempListBn.length.toString());
    print("Suha pr"+widget.tempListPr.length.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.tempListBn.length,
              itemBuilder: (context, index) {

                return  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width/2,
                                      child: Text(widget.tempListBn[index] != null ? widget.tempListBn[index] : 'not found')
                                  )
                                ],
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Row(children: [
                                      Text(widget.tempListAr[index] != null ? widget.tempListAr[index] : 'not found')
                                    ],),
                                    Row(children: [
                                      Text(widget.tempListPr[index] != null ? widget.tempListPr[index] : 'not found')
                                    ],),
                                  ],
                                ),
                              ),
                            ],
                          ),
                      ),
                    ),
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
