// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardOportunity extends StatelessWidget {
  const CardOportunity({
    Key? key,
    this.title,
    this.text,
    required this.img,
    this.icon,
    this.describer,
    required this.path,
  }) : super(key: key);

  final title;
  final text;
  final String img;
  final IconData? icon;
  final describer;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0.0, 3.0),
            blurRadius: 8.0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 340,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Center(
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(255, 102, 0, 1),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 320,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Center(
                    child: Text(
                      text,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 19,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 320,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    describer,
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Colors.orange, Colors.red],
                  ),
                ),
                child: ListTile(
                  title: const Text(
                    'Saiba mais',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () => openBrowserURL(url: Uri.parse(path)),
                  // onTap: () => openBrowserURL(url: path),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
            ],
          ),
          // const SizedBox(height: 10),
        ],
      ),
    );
  }

  Future openBrowserURL({required Uri url, bool inApp = false}) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
}
