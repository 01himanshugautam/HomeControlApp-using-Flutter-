import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  final Color color;
  final void Function() onPressed;
  Circle({
    this.color,
    this.onPressed,
  });

  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  Color cValue;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed ?? () {},
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
        ),
        child: Container(
          height: 35.0,
          width: 35.0,
          decoration: BoxDecoration(
            color: widget.color ?? Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
