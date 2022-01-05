import 'package:flutter/material.dart';
import 'package:uae/helper/menu_widget.dart';
import 'package:uae/screen/translator.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
GlobalKey<SliderMenuContainerState> _key =
new GlobalKey<SliderMenuContainerState>();
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      body:
      SliderMenuContainer(
          appBarColor: allColors.appColor,
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
        Column(
          children: [
            SizedBox(
              height: 80,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: allColors.appButtonColor
              ),
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute
                        (builder: (context)=>
                      LangTranslator()));
                },
                child: Text("Translator"))
          ],
        ),
      ),

    );
  }
}
