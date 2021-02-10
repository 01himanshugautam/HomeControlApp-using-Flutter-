import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_color_models/flutter_color_models.dart';
import 'package:homecontrolapp/Pages/DetailsPage.dart';
import 'package:homecontrolapp/Widgets/BottomAppbar.dart';

class HoemPage extends StatefulWidget {
  HoemPage({Key key}) : super(key: key);

  @override
  _HoemPageState createState() => _HoemPageState();
}

class _HoemPageState extends State<HoemPage> {
  List<String> images = [
    "assets/Images/bed.svg",
    "assets/Images/room.svg",
    "assets/Images/kitchen.svg",
    "assets/Images/bathtube.svg",
    "assets/Images/house.svg",
    "assets/Images/balcony.svg",
  ];
  List<String> name = [
    "Bed room",
    "Main room",
    "Kitchen",
    "Bathroom",
    "Outdoor",
    "Balcony",
  ];
  List<String> quantity = [
    "4 Lights",
    "2 Lights",
    "5 Lights",
    "1 Lights",
    "5 Lights",
    "2 Lights",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RgbColor(19, 83, 165),
      bottomNavigationBar: BottomAppbar(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 70.0, left: 20.0, bottom: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Control\nPanel',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Container(
                    height: 80.0,
                    width: 100.0,
                    child: Image.asset(
                      "assets/Images/user.png",
                      height: 80.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(246, 248, 251, 0.9),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0)),
            ),
            child: ListView(
              // primary: false,
              padding: EdgeInsets.only(
                left: 25.0,
                right: 20.0,
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 12.0,
                    top: 30,
                  ),
                  child: Text(
                    'All Rooms',
                    style: TextStyle(
                      // fontFamily: 'Montserrat',
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 25.0,
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: 80,
                    ),
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: GridView.builder(
                      itemCount: images.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 4.0),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            print(" \n\n\nYou Pressed on $index \n\n\n");
                            Navigator.push(
                              context,
                              // MaterialPageRoute(
                              //   builder: (context) => DetailPage(
                              //     img: images[index],
                              //     quantity: quantity[index],
                              //     name: name[index],
                              //   ),
                              // ),
                              PageRouteBuilder(
                                transitionDuration: Duration(seconds: 1),
                                transitionsBuilder:
                                    (context, animation, animationTime, child) {
                                  animation = CurvedAnimation(
                                    parent: animation,
                                    curve: Curves.easeIn,
                                  );
                                  return ScaleTransition(
                                    scale: animation,
                                    child: child,
                                    alignment: Alignment.center,
                                  );
                                },
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return DetailPage(
                                    img: images[index],
                                    quantity: quantity[index],
                                    name: name[index],
                                  );
                                },
                              ),
                            );
                          },
                          child: Card(
                            elevation: 1,
                            // margin: EdgeInsets.only(left: 10, bottom: 10.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 7),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: SvgPicture.asset(
                                      images[index],
                                      height: 80.0,
                                      width: 120.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    name[index],
                                    style: TextStyle(
                                      // fontFamily: 'Montserrat',
                                      color: Color.fromRGBO(57, 57, 57, 1),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28.0,
                                    ),
                                  ),
                                  Text(
                                    quantity[index],
                                    style: TextStyle(
                                      // fontFamily: 'Montserrat',
                                      color: Color.fromRGBO(255, 176, 72, 1),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
