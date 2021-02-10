import 'package:flutter/material.dart';
import 'package:flutter_color_models/flutter_color_models.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homecontrolapp/Widgets/BottomAppbar.dart';
import 'package:homecontrolapp/Widgets/Circle.dart';
import 'package:homecontrolapp/Widgets/ScenesIteam.dart';

class DetailPage extends StatefulWidget {
  final String name;
  final String img;
  final String quantity;
  DetailPage({this.img, this.name, this.quantity});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var selectedCard = 'name';
  var sliderValue = 1.0;
  // var color = "";
  Color sColor;

  // String name;
  // String img;
  // String quantity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RgbColor(19, 83, 165),
      bottomNavigationBar: BottomAppbar(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 0, left: 15.0, bottom: 30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30,
                        color: Colors.white,
                        splashColor: Colors.purple,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 70.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                              // fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                          Text(
                            widget.quantity,
                            style: TextStyle(
                              // fontFamily: 'Montserrat',
                              color: Color.fromRGBO(255, 176, 72, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 18,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 0,
                              left: 75.0,
                              right: 15,
                            ),
                            child: Container(
                              child: SvgPicture.asset(
                                "assets/Images/Group 38.svg",
                                height: 115.0,
                                width: 60.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 60.0,
                            ),
                            child: Opacity(
                              opacity: sliderValue,
                              child: Container(
                                height: 11.0,
                                width: 22,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: sColor ??
                                          Color.fromRGBO(255, 255, 255, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ],
                                  color: sColor ??
                                      Color.fromRGBO(255, 255, 255, 1),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(35.0),
                                    bottomRight: Radius.circular(35.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 50.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _CustomFeatures(
                        "Main Light",
                        "assets/Images/surface1.svg",
                      ),
                      _CustomFeatures(
                        "Desk Light",
                        "assets/Images/desk.svg",
                      ),
                      _CustomFeatures(
                        "Bed Light",
                        "assets/Images/bed (1).svg",
                      ),
                    ],
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
                  topRight: Radius.circular(35.0),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 20),
                          child: Text(
                            "Intensity",
                            style: TextStyle(
                              // fontFamily: 'Montserrat',
                              color: RgbColor(9, 59, 123),
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/Images/solution2.svg",
                            ),
                            Container(
                              width: 300.0,
                              child: Slider(
                                min: 0.1,
                                max: 1.0,
                                value: sliderValue,
                                activeColor: sColor,
                                inactiveColor: Colors.blueGrey,
                                onChanged: (newValue) {
                                  setState(() {
                                    sliderValue = newValue;
                                    Circle();
                                  });
                                },
                              ),
                            ),
                            SvgPicture.asset(
                              "assets/Images/solution.svg",
                              // height: 15.0,
                              // color: sColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 20),
                          child: Text(
                            "Color",
                            style: TextStyle(
                              // fontFamily: 'Montserrat',
                              color: RgbColor(9, 59, 123),
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Circle(
                              color: RgbColor(255, 155, 155),
                              onPressed: () {
                                setState(() {
                                  sColor = RgbColor(255, 155, 155);
                                });
                              },
                            ),
                            Circle(
                              color: RgbColor(148, 235, 158),
                              onPressed: () {
                                setState(() {
                                  sColor = RgbColor(148, 235, 158);
                                });
                              },
                            ),
                            Circle(
                              color: RgbColor(148, 202, 235),
                              onPressed: () {
                                setState(() {
                                  sColor = RgbColor(148, 202, 235);
                                });
                              },
                            ),
                            Circle(
                              color: RgbColor(165, 148, 235),
                              onPressed: () {
                                setState(() {
                                  sColor = RgbColor(165, 148, 235);
                                });
                              },
                            ),
                            Circle(
                              color: RgbColor(222, 148, 235),
                              onPressed: () {
                                setState(() {
                                  sColor = RgbColor(222, 148, 235);
                                });
                              },
                            ),
                            Circle(
                              color: RgbColor(235, 208, 148),
                              onPressed: () {
                                setState(() {
                                  sColor = RgbColor(235, 208, 148);
                                });
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15.0,
                              ),
                              child: Container(
                                height: 35.0,
                                width: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/Images/+.svg",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 20),
                          child: Text(
                            "Scenes",
                            style: TextStyle(
                              // fontFamily: 'Montserrat',
                              color: RgbColor(9, 59, 123),
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SceensIteam(
                              name: "Brithday",
                              color: Color.fromRGBO(255, 168, 151, 0.9),
                            ),
                            SceensIteam(
                              name: "Party",
                              color: Color.fromRGBO(184, 147, 235, 0.9),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SceensIteam(
                              name: "Relax",
                              color: Color.fromRGBO(147, 206, 235, 0.9),
                            ),
                            SceensIteam(
                              name: "Fun",
                              color: Color.fromRGBO(144, 223, 148, 0.9),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Widget _CustomFeatures(String name, String img) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: InkWell(
        onTap: () {
          selectCard(name);
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeIn,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: name == selectedCard ? RgbColor(9, 59, 123) : Colors.white,
            border: Border.all(
              color: name == selectedCard
                  ? Colors.transparent
                  : Colors.grey.withOpacity(0.3),
              style: BorderStyle.solid,
              width: 0.75,
            ),
          ),
          height: 40.0,
          width: 150.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                img ?? "assets/Images/user.svg",
                height: 18.0,
                width: 20.0,
                color:
                    name == selectedCard ? Colors.white : RgbColor(9, 59, 123),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  name ?? "Name",
                  style: TextStyle(
                    // fontFamily: 'Montserrat',
                    color: name == selectedCard
                        ? Colors.white
                        : RgbColor(9, 59, 123),
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  selectCard(nameI) {
    print(nameI);
    print(selectedCard);
    setState(() {
      selectedCard = nameI;
    });
  }
}
