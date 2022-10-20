import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 60,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25)),
                    child: IconButton(
                      icon: const FaIcon(FontAwesomeIcons.whatsapp,
                          color: Colors.white, size: 25),
                      onPressed: () async {
                        // final url = 
                        // Uri(
                        //   scheme: 'https',
                        //   host: 'wa.link',
                        //   path: '/3oyyu7',
                        //   fragment: 'numbers',
                        // );
                        const String url = 'https://wa.link/3oyyu7';
                        // final url = Uri.parse('https://wa.link/3oyyu7');
                        openBrowserURL(url: url);
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                TextButton(
                  onPressed: () {},
                  child: const Text('Início', style: TextStyle(fontSize: 20)),
                ),
                const SizedBox(width: 15),
                TextButton(
                  onPressed: () {},
                  child: const Text('Serviços', style: TextStyle(fontSize: 20)),
                ),
                const SizedBox(width: 15),
                TextButton(
                  onPressed: () {},
                  child: const Text('Sobre', style: TextStyle(fontSize: 20)),
                ),
                const SizedBox(width: 15),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1),
              child: Image.asset('assets/img/contact.png'),
            ),
          ],
        ),
      ),
    );
  }

  Future openBrowserURL({required String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
