import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SceensIteam extends StatelessWidget {
  final String name;
  final Color color;

  SceensIteam({Key key, this.name, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 182,
        decoration: BoxDecoration(
          color: color ?? Color.fromRGBO(144, 223, 148, 0.9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/Images/solution1.svg",
              height: 23.0,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                name ?? "Name",
                style: TextStyle(
                  // fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
