import 'package:flutter/material.dart';
import 'package:uae/app_all_data/airport_conversation.dart';
import 'package:uae/app_all_data/basar_jinispotro_posak.dart';
import 'package:uae/app_all_data/food_and_fruits.dart';
import 'package:uae/app_all_data/hospital_conversation.dart';
import 'package:uae/app_all_data/necessary_sentense.dart';
import 'package:uae/helper/menu_widget.dart';
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
  Icons.airplanemode_active_rounded,
  Icons.home,
  Icons.local_hospital,
  Icons.my_library_books,
  Icons.perm_contact_calendar,
  Icons.fireplace_sharp
];
List<String> btnName = [
  "প্রয়োজনীয় শব্দার্থ",
  "প্রয়োজনীয় বাক্য",
  "এয়ারপোর্টে কথোপকথন",
  "হাসপাতালে কথোপকথন",
  "মুদি দোকানে কথোপকথন"
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
              } else if (title == "Doctor's List") {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder:
                //       (context) =>
                //       DoctorTypeShow()),
                // );
              } else if (title == "All Clinics") {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder:
                //       (context) => Employees()),
                // );
              } else if (title == "All Diagnostics") {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder:
                //       (context) => Quiz()),
                // );
              } else if (title == "ABOUT US") {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder:
                //       (context) => AboutUs()),
                // );
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
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 70),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(

                                primary: allColors.appButtonColor,
                            ),

                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LangTranslator()));
                            },
                            child: Text(
                              "অনুবাদ করুন",
                              style: TextStyle(color: allColors.apptext),
                            )),
                      ),
                    )
                  ],
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
                                  if(i == 1)
                                    {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context)
                                            => SentenceScreen(
                                              title: btnName[1],
                                              tempListBn: _airportConversation.bnAirportConversation,
                                              tempListAr: _airportConversation.arAirportConversation,
                                              tempListPr: _airportConversation.prAirportConversation,
                                            )),
                                      )
                                    }
                                  else if(i == 2)
                                    {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context)
                                            => SentenceScreen(
                                              title: btnName[2],
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
                                                  tempListBn: _basarjinis_potro_posak.bnlistBasarjinisPotro,
                                                  tempListAr: _basarjinis_potro_posak.arListBasarJinisPotro,
                                                  tempListPr: _basarjinis_potro_posak.prlistBasarJinisPotro,
                                                )),
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
