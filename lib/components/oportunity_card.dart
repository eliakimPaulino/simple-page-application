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
    required this.content,
  }) : super(key: key);

  final title;
  final text;
  final String img;
  final IconData? icon;
  final describer;
  final String path;
  final Widget content;

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
          Stack(
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
              Positioned(
                bottom: 10,
                right: 10,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      useSafeArea: false,
                      context: context,
                      builder: (builder) => AlertDialog(
                        contentPadding: const EdgeInsets.all(20.0),
                        backgroundColor: const Color.fromRGBO(28, 79, 156, 1),
                        title: const Text(
                          'Atendimento em Libras',
                          style: TextStyle(color: Colors.orange),
                        ),
                        content: content,
                            // ContentVideoApresentacao(height: 198, width: 350),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Fechar'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.25),
                      image: const DecorationImage(
                        image: AssetImage('assets/img/logoLS.png'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0.0, 6.0),
                          color: Colors.black.withOpacity(.80),
                          blurRadius: 7,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
                      textAlign: TextAlign.start,
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
                child: TextButton(
                  child: const Text(
                    'Saiba mais',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () => openBrowserURL(url: Uri.parse(path)),
                  // onTap: () => openBrowserURL(url: path),
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(40),
                  // ),
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
