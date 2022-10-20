// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';

class IconTile extends StatelessWidget {
  const IconTile({
    Key? key,
    required this.top,
    required this.left,
    required this.icon,
    // this.title,
    // this.subtitle,
  }) : super(key: key);
  final double top;
  final double left;
  final IconData icon;
  // final title;
  // final subtitle;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(255, 102, 0, 1),
              offset: Offset(0.0, 1.0),
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: const Color.fromRGBO(255, 102, 0, 1),
              child: Icon(icon, size: 28, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
