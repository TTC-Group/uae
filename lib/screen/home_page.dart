import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uae/app_all_data/airport_conversation.dart';
import 'package:uae/app_all_data/basar_jinispotro_posak.dart';
import 'package:uae/app_all_data/food_and_fruits.dart';
import 'package:uae/app_all_data/hospital_conversation.dart';
import 'package:uae/app_all_data/necessary_sentense.dart';
import 'package:uae/helper/menu_widget.dart';
import 'package:uae/screen/about_us.dart';
import 'package:uae/screen/quiz_page.dart';
import 'package:uae/screen/sentence_screen.dart';
import 'package:uae/screen/translator.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:uae/screen/word_screen.dart';
import 'package:uae/utills/allColors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
NecessarySentense _necessary
     =NecessarySentense();

AirportConversation _airportConversation
      =AirportConversation();

HospitalConversation _hospitalConversation
          =HospitalConversation();

FoodAndFruits _foodAndFruits
         =FoodAndFruits();
Basarjinis_potro_posak _basarjinis_potro_posak
      = Basarjinis_potro_posak();
GlobalKey<SliderMenuContainerState> _key =
    new GlobalKey<SliderMenuContainerState>();
List<IconData> iconList = [
  Icons.book_outlined,
  Icons.my_library_books,
  Icons.airplanemode_on,
  Icons.local_hospital,
  Icons.shopping_bag_rounded,
  Icons.list_alt
];
List<String> btnName = [
  "প্রয়োজনীয় শব্দার্থ",
  "প্রয়োজনীয় বাক্য",
  "এয়ারপোর্টে কথোপকথন",
  "হাসপাতালে কথোপকথন",
  "মুদি দোকানে কথোপকথন",
  "কুইজ"
];

List<String> wordBtnList = [
  "songkha, din mash",
  "Shorbonam",
  "khabar o fol mul",
  "ranna ghorer jinishpotro",
  "sorirer ongo protongo"
];
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SliderMenuContainer(
        appBarColor: allColors.appcontColor,
        key: _key,
        sliderMenuCloseSize: 0,
        title: Text(
          "HOME",
          style: TextStyle(
              color: Colors.white,
              fontSize: width * 0.055,
              fontWeight: FontWeight.w800),
        ),
        shadowColor: Colors.transparent,
        drawerIconColor: Colors.white,
        drawerIconSize: width * 0.08,
        //slideDirection: Slider.RIGHT_TO_LEFT,
        //appBarPadding: const EdgeInsets.only(top: 10),
        sliderMenuOpenSize: 280,
        appBarHeight: 100,
        appBarPadding: EdgeInsets.fromLTRB(0, 40, 0, 0),
        sliderMenu: MenuWidget(
          //  onProfilePictureClick: () {},
          onItemClick: (title) {
            _key.currentState!.closeDrawer();
            setState(() {
              title = title;
              if (title == "HOME") {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder:
                //       (context) => MyHomePage()),
                // );
              } else if (title == "TRANSLATOR") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:
                      (context) =>
                          LangTranslator()),
                );
              } else if (title == "QUIZ") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:
                      (context) => QuizPage()),
                );
              } else if (title == "WORDS") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:
                      (context) => WordScreen(
                        btnName: wordBtnList,
                      )),
                );
              } else if (title == "ABOUT US") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:
                      (context) => AboutUs()),
                );
              }
            });
          },
        ),
        sliderMain: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                height: height * 0.15,
                width: width,
                child: Stack(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: allColors.appcontColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36),
                              bottomRight: Radius.circular(36),
                            ))),

                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 250,
                //margin: EdgeInsets.symmetric(horizontal: 70),
                decoration: BoxDecoration(

                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LangTranslator()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1.0, 2.0),
                              color: Colors.deepOrange.shade50,
                              blurRadius: 2.0,
                            ),],
                          borderRadius: BorderRadius.circular(10),
                          color: allColors.appcontColor
                      ),
                      height: 50,
                      width: 80,
                      child: Center(
                        child: Text(
                          "অনুবাদ করুন",
                          style: TextStyle(
                            fontSize: 18,
                              color: allColors.apptext,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  childAspectRatio: 2.1,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    for (int i = 0; i < btnName.length; i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: width,
                          child: InkWell(
                            onTap: () {
                              (i == 0)?
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)
                                    => WordScreen(
                                      btnName: wordBtnList,
                                    ))):
                                {
                                  if(i == 2)
                                    {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context)
                                            => SentenceScreen(
                                              title: btnName[2],
                                              tempListBn: _airportConversation.bnAirportConversation,
                                              tempListAr: _airportConversation.arAirportConversation,
                                              tempListPr: _airportConversation.prAirportConversation,
                                            )),
                                      )
                                    }
                                  else if(i == 1)
                                    {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context)
                                            => SentenceScreen(
                                              title: btnName[1],
                                              tempListBn: _necessary.bnNecessarySentense,
                                              tempListAr: _necessary.arNecessarySentense,
                                              tempListPr: _necessary.prNecessarySentense,
                                            )),
                                      )
                                    }
                                  else if(i == 3)
                                      {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context)
                                              => SentenceScreen(
                                                title: btnName[3],
                                                tempListBn: _hospitalConversation.bnListHos,
                                                tempListAr: _hospitalConversation.arListHos,
                                                tempListPr: _hospitalConversation.PrListHos,
                                              )),
                                        )
                                      }
                                    else if(i == 4)
                                        {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context)
                                                => SentenceScreen(
                                                  title: btnName[4],
                                                  tempListBn: _basarjinis_potro_posak.bnList,
                                                  tempListAr: _basarjinis_potro_posak.arList,
                                                  tempListPr: _basarjinis_potro_posak.prList,
                                                )),
                                          )
                                        }
                                      else if(i == 5)
                                          {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context)
                                                  => QuizPage()),
                                            )
                                          }
                                  ,
                                };
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Container(
                                height: 50,
                                width: width,
                                decoration: BoxDecoration(
                                    color: allColors.appButtonColor,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(2.0, 5.0),
                                        color: Colors.deepOrange.shade100,
                                        blurRadius: 10.0,
                                      )
                                    ]),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 90,
                                      width: 105,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            colors: [
                                              allColors.appcontColor,
                                              allColors.appButtonColor
                                            ],
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft:
                                                Radius.circular(width * 0.1),
                                            bottomLeft:
                                                Radius.circular(width * 0.3),
                                            bottomRight: Radius.circular(300),
                                          )),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Center(
                                          child: Text(
                                            btnName[i],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                                color: allColors.apptext),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 5,
                                      right: 5,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          iconList[i],
                                          color: allColors.appcontColor,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
