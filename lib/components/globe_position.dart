import 'package:flutter/material.dart';

class GlobePosition extends StatelessWidget {
  const GlobePosition({
    Key? key,
    this.top,
    this.left,
    this.right,
    this.bottom,
    // required this.colorFromARGB1,
    // required this.colorFromARGB2,
  }) : super(key: key);
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  // final Color colorFromARGB1;
  // final Color colorFromARGB2;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Container(
        height: 400,
        width: 400,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // transform: const GradientRotation(pi / 2),
              colors: [
                // colorFromARGB1,
                // colorFromARGB2,
                Color.fromRGBO(248, 73, 5, 1),
                Color.fromRGBO(248, 62, 2, 1),
                Color.fromRGBO(249, 115, 14, 1),
                Color.fromRGBO(249, 113, 13, 1),
                Color.fromRGBO(250, 127, 16, 1),
              ]),
          borderRadius: BorderRadius.circular(200),
        ),
      ),
    );
  }
}
