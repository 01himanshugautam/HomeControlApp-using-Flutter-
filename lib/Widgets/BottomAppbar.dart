import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomAppbar extends StatelessWidget {
  const BottomAppbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        color: Colors.white,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 75.0,
                      top: 13,
                    ),
                    child: SvgPicture.asset(
                      "assets/Images/bulb.svg",
                      height: 30.0,
                      width: 50.0,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Padding(
                      padding: const EdgeInsets.only(
                        right: 75.0,
                        top: 13,
                      ),
                      child: SvgPicture.asset(
                        "assets/Images/Icon feather-home.svg",
                        height: 30.0,
                        width: 50.0,
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Padding(
                      padding: const EdgeInsets.only(
                        top: 13,
                      ),
                      child: SvgPicture.asset(
                        "assets/Images/Icon feather-settings.svg",
                        height: 30.0,
                        width: 50.0,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
