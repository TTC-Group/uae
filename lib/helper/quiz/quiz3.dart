import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uae/model/quiz_model.dart';
import 'package:uae/screen/Result.dart';
int scoreCount=0;
QuestionModel questionModel1 = QuestionModel(
    "আমি আপনাকে কিভাবে সাহায্য করতে পারি এর আরবি কি.?",
    ["আনা বিখারিন" ,"কায়ফ ইউমকিনুনি মুসাইদুকা?", "লেইশ", "ফাদাল"],
    [0,1,0,0]);
QuestionModel questionModel2 = QuestionModel(
    "আমি মাথাব্যথার জন্য ডাক্তার দেখাতে চাই এর আরবি কি?",
    ["তায়াল হেনা" ,"মাসা' আলখায়ের দুক্তুর!", "আওয়াদু 'আন' আরা তবিবান লিইলাজ আলসিদাই", "জিয়তা"],
    [0,0,1,0]);
QuestionModel questionModel3 = QuestionModel(
    "আমার পায়ে ব্যথা এর আরবি কি?",
    ["অদায়ক 'আইইতাম এদাসাত আলেয়ঁ ফী আয়নায়েক" ,"আরা আলকালিল ফী আলিউয়ুন", "আনা বিখারিন", "আশিউর বিআলাম ফী সাকী"],
    [0,0,0,1]);
QuestionModel questionModel4 = QuestionModel(
    "আয়না এর আরবি কি?",
    ["মুআত্তাফ" ,"মিন্দিল", "বাযলাহ", "কোবআ"],
    [1,0,0,0]);
QuestionModel questionModel5 = QuestionModel(
    "এটার নাম কি এর আরবি কি?",
    ["আনা তাবান" ,"সুইস মিক হাদা", "জিয়তু মিন", "আনা বিখারিন"],
    [0,1,0,0]);
QuestionModel questionModel6 = QuestionModel(
    "সংবাদপত্র  এর আরবি কি ?",
    ["ইলাল লেকা" ,"জারিদাহ", "মিন আইনা ", "মা ইসমুকা"],
    [0,1,0,0]);
QuestionModel questionModel7 = QuestionModel(
    "আটার রুটি  এর আরবি কি?",
    ["ফাললান " ,"হালিব", "লাহামুল গানাম", "খুবজ/খোবুছ"],
    [0,0,0,1]);
QuestionModel questionModel8 = QuestionModel(
    "ভাত,চাউল  এর আরবি কি?",
    ["আনা তাবান" ,"রুজ", "লিমা জিয়তা", "বাইত"],
    [0,0,1,0]);
QuestionModel questionModel9 = QuestionModel(
    "প্লেট ধােয়ার মেশিন এর আরবি কি?",
    ["মিগছালাতুল আতবাক" ,"আছছালাজাত/তাল্লাজা", "ইসমি হেনা", "বাইত"],
    [1,0,0,0]);
QuestionModel questionModel10 = QuestionModel(
    "সুইচ অফ করা এর আরবি কি?",
    ["আনা তাবান" ,"মাগফিরাতান", "কাইফাল হাল", "গাইরু লাজ্জাতিন"],
    [0,0,0,1]);
// QuestionModel questionModel11 = QuestionModel(
//     "আমার নাম হেনা?",
//     ["আনা তাবান" ,"আনা বিখারিন", "ইসমি হেনা", "বাইত"],
//     [1,0,0,0]);
// QuestionModel questionModel12 = QuestionModel(
//     "আমার নাম হেনা?",
//     ["আনা তাবান" ,"আনা বিখারিন", "ইসমি হেনা", "বাইত"],
//     [1,0,0,0]);
// QuestionModel questionModel13 = QuestionModel(
//     "আমার নাম হেনা?",
//     ["আনা তাবান" ,"আনা বিখারিন", "ইসমি হেনা", "বাইত"],
//     [1,0,0,0]);
// QuestionModel questionModel14 = QuestionModel(
//     "আমার নাম হেনা?",
//     ["আনা তাবান" ,"আনা বিখারিন", "ইসমি হেনা", "বাইত"],
//     [1,0,0,0]);
// QuestionModel questionModel15 = QuestionModel(
//     "আমার নাম হেনা?",
//     ["আনা তাবান" ,"আনা বিখারিন", "ইসমি হেনা", "বাইত"],
//     [1,0,0,0]);
// QuestionModel questionModel16 = QuestionModel(
//     "আমার নাম হেনা?",
//     ["আনা তাবান" ,"আনা বিখারিন", "ইসমি হেনা", "বাইত"],
//     [1,0,0,0]);
// QuestionModel questionModel17 = QuestionModel(
//     "আমার নাম হেনা?",
//     ["আনা তাবান" ,"আনা বিখারিন", "ইসমি হেনা", "বাইত"],
//     [1,0,0,0]);
// QuestionModel questionModel18 = QuestionModel(
//     "আমার নাম হেনা?",
//     ["আনা তাবান" ,"আনা বিখারিন", "ইসমি হেনা", "বাইত"],
//     [1,0,0,0]);
// QuestionModel questionModel19 = QuestionModel(
//     "আমার নাম হেনা?",
//     ["আনা তাবান" ,"আনা বিখারিন", "ইসমি হেনা", "বাইত"],
//     [1,0,0,0]);
// QuestionModel questionModel20 = QuestionModel(
//     "আমার নাম হেনা?",
//     ["আনা তাবান" ,"আনা বিখারিন", "ইসমি হেনা", "বাইত"],
//     [1,0,0,0]);
List<QuestionModel> questionList =[
  questionModel1,
  questionModel2,
  questionModel3,
  questionModel4,
  questionModel5,
  questionModel6,
  questionModel7,
  questionModel8,
  questionModel9,
  questionModel10,
  // questionModel11,
  // questionModel12,
  // questionModel13,
  // questionModel14,
  // questionModel15,
  // questionModel15,
  // questionModel17,
  // questionModel18,
  // questionModel19,
  // questionModel20
];
int questionNbr=0;
bool ansvisiblity = false;
List <Color> optionColor= [
  Colors.black,
  Colors.black,
  Colors.black,
  Colors.black,
];
class startquiz3 extends StatefulWidget {
  const startquiz3({Key? key}) : super(key: key);

  @override
  _startquizState createState() => _startquizState();
}

class _startquizState extends State<startquiz3> {
  @override
  void initState() {
    bool ansvisiblity = false;
    optionColor= [
      Colors.black,
      Colors.black,
      Colors.black,
      Colors.black,
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Color(0xff252C4A),
        elevation: 0,
        title: Text("Quiz",style: TextStyle(fontSize: 35),),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(color: Color(0xff252C4A) ,
              child: Row(
                children: [
                  Text("Question${questionNbr+1} 1 Out of ${questionList.length}",style: TextStyle(fontSize: 20,color: Colors.white),),
                  Spacer(),
                  Container(height: 40,
                      width: 70,
                      decoration: BoxDecoration(color: Color(0xff333e68),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15,left: 10),
                        child: Text("Score: ${scoreCount}",style: TextStyle(fontSize: 15,color: Colors.white)),
                      )),
                ],
              ),
            ),
            Container(height: height/3,
                width: width,
                decoration: BoxDecoration(color: Color(0xff252C4A),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),),

                ),
                child: Padding(
                  padding:  EdgeInsets.only(top: height*0.05,left: width/10),
                  child: Text(questionList[questionNbr].question,style: TextStyle(fontSize: 30,color: Colors.white),),
                )),
            Expanded(
              child: ListView.builder(
                  itemCount: questionList[questionNbr].optionList.length,
                  itemBuilder: (context,index){
                    return Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: InkWell( child: InkWell(
                          onTap: (){
                            setState(() {
                              ansvisiblity = true;
                              if(questionList[questionNbr].optionValueList[index]==1){
                                scoreCount++;
                                optionColor[index]=Colors.green;
                              }
                              else{
                                optionColor[index]=Colors.red;
                              }
                            });
                          },
                          child: Container(height: height/12,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: Color(0xff252C4A)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 22,left: 150),
                              child: Text(questionList[questionNbr].optionList[index],
                                style: TextStyle(
                                    color: optionColor[index]),),
                            ),
                          ),
                        ),
                        )
                    );
                  }),
            ),
            for(int i= 0;i<4; i++)
              if(questionList[questionNbr].optionValueList[i]==1)
                Visibility(
                  visible: ansvisiblity,
                  child: Text("Correct Answer: "
                      "${questionList[questionNbr].optionList[i]}"),

                ),
            Container(height: height/20,
              width: width/4,
              decoration: BoxDecoration( color: Color(0xff252C4A),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(onPressed: (){
                setState(() {
                  if(questionNbr<10)
                    questionNbr++;
                  else
                  {
                    questionNbr=0;
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> ScoreView(
                          totalScore: scoreCount,
                        )));
                  }
                });
                initState();

              },

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Next"),
                    )
                  ],
                ),),
            )
          ],

        ),
      ),
    );
  }
}
