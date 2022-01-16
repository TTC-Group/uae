import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [

          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.black12,
            child: Icon(Icons.favorite,size: 20,color: Colors.blueAccent,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.black12,
              child: Icon(Icons.person,size: 20,color: Colors.blueAccent),
            ),
          )
        ],
      ),


      body: Container(

        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: height/6,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lets Play",style: TextStyle(fontSize: 40,color:Color(0xffec407a)),),
                      Text("Be the first",style: TextStyle(fontSize: 17,color:Colors.grey),)
                    ],
                  ),
                )

              ),
              InkWell(onTap: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder:
                //       (context) => startquiz()),
                // );

              },
                child: Container(
                  height: height/5,
                  width: width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xffED6F9E),
                        Color(0xffEC8B6A),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(

                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30,left: 12),
                                child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.black12,
                                    child: Icon(Icons.check,size: 20,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("ধাপ এক",style: TextStyle(fontSize: 15,color:Colors.white)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,),
                                child: Text("সহজ প্রশ্নোত্তর",style: TextStyle(fontSize: 25,color:Colors.white)),
                              ),
                            ],
                          ),
                          Column(

                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Image.asset('assets/iq.png',height: 80,width: 150,),
                              ),

                            ],
                          )
                        ],
                      ),



                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: height/5,
                width: width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xff07BBFE),
                      Color(0xff5471EC),

                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(

                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30,left: 12),
                              child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.black12,
                                  child: Icon(Icons.check,size: 20,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("ধাপ দুই",style: TextStyle(fontSize: 15,color:Colors.white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8,),
                              child: Text("মধ্যম প্রশ্নোত্তর",style: TextStyle(fontSize: 25,color:Colors.white)),
                            ),
                          ],
                        ),
                        Column(

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Image.asset('assets/iq.png',height: 80,width: 150,),
                            ),

                          ],
                        )
                      ],
                    ),



                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: height/5,
                width: width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xffFBC2EA),
                      Color(0xffA18ED0),

                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(

                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30,left: 12),
                              child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.black12,
                                  child: Icon(Icons.check,size: 20,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("ধাপ তিন",style: TextStyle(fontSize: 15,color:Colors.white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8,),
                              child: Text("কঠিন প্রশ্নোত্তর",style: TextStyle(fontSize: 25,color:Colors.white)),
                            ),
                          ],
                        ),
                        Column(

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Image.asset('assets/iq.png',height: 80,width: 150,),
                            ),

                          ],
                        )
                      ],
                    ),



                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
