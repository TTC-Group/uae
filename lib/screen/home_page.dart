import 'package:flutter/material.dart';
import 'package:uae/helper/menu_widget.dart';
import 'package:uae/screen/translator.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:uae/utills/allColors.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
GlobalKey<SliderMenuContainerState> _key =
new GlobalKey<SliderMenuContainerState>();
List<String> btnName=[
  "button 1",
  "button 2",
  "button 3",
  "button 4",
  "button 5"
];
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      body:
      SliderMenuContainer(
          appBarColor: allColors.appcontColor,
          key: _key,
          sliderMenuCloseSize: 0,
          title: Text("HOME",style: TextStyle(color: Colors.white,
              fontSize: width*0.055,fontWeight: FontWeight.w800),),
          shadowColor: Colors.transparent,
          drawerIconColor: Colors.white,
          drawerIconSize: width*0.08,
          //slideDirection: Slider.RIGHT_TO_LEFT,
          //appBarPadding: const EdgeInsets.only(top: 10),
          sliderMenuOpenSize: 280,
          appBarHeight: 100,
          appBarPadding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          sliderMenu:
          MenuWidget(
            //  onProfilePictureClick: () {},
            onItemClick: (title) {
              _key.currentState!.closeDrawer();
              setState(() {
                title = title;
                if(title=="HOME")
                {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder:
                  //       (context) => MyHomePage()),
                  // );
                }
                else if(title=="Doctor's List")
                {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder:
                  //       (context) =>
                  //       DoctorTypeShow()),
                  // );
                }
                else if(title=="All Clinics")

                {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder:
                  //       (context) => Employees()),
                  // );
                }
                else if(title=="All Diagnostics")
                {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder:
                  //       (context) => Quiz()),
                  // );
                }
                else if(title=="ABOUT US")
                {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder:
                  //       (context) => AboutUs()),
                  // );
                }
              });
            },
          ),
          sliderMain:
        Container(
          color: Colors.grey,
          child: Column(
              children: [
                Container(
                  height: height*0.15,
                  width: width,
       child: Stack(
             children: [
               Container(
                   decoration: BoxDecoration(
                      color: allColors.appcontColor,

                       borderRadius: BorderRadius.only(
                         bottomLeft: Radius.circular(36),
                         bottomRight: Radius.circular(36),



                       )
                   )
               ),
               Positioned(
                 bottom: 0,
                 left: 0,
                 right: 0,
                 child: Container(

                   margin: EdgeInsets.symmetric(horizontal: 70),
                   decoration: BoxDecoration(

                     borderRadius: BorderRadius.circular(20)
                   ),

                 child:  ElevatedButton(
                     style: ElevatedButton.styleFrom(primary: allColors.appButtonColor
                     ),
                     onPressed: (){
                       Navigator.push(context,
                           MaterialPageRoute
                             (builder: (context)=>
                               LangTranslator()));
                     },
                     child: Text("Translator",style: TextStyle(color:allColors.apptext),)) ,
                 ),
               )

             ],
       ),
                ),
                Expanded(
                  child: GridView.count(
                    childAspectRatio: 2.7,
                      crossAxisCount: 2,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                    children: [
                      for(int i=0; i<btnName.length;i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 150,
                            child: InkWell(
                              onTap: (){

                              },
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: allColors.appButtonColor,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(5.0,10.0),
                                          color: allColors.appColor,
                                          blurRadius: 30.0,
                                        )
                                      ]
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 50,
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
                                              topLeft: Radius.circular(width*0.1),
                                              bottomLeft: Radius.circular(width*0.3),
                                              bottomRight: Radius.circular(300),

                                            )
                                        ),
                                        child: Center(child: Text(btnName[i])),

                                      ),
                                      Positioned(
                                          top: 5,
                                          right: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.home,color: allColors.appcontColor,),
                                          )
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
