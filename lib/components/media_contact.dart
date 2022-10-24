import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MediaContactTap extends StatelessWidget {
  const MediaContactTap(
      {Key? key, required this.path, required this.title, this.icon})
      : super(key: key);
  final String path;
  final String title;
  final FaIcon? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => openBrowserURL(url: Uri.parse(path)),
      child: Container(
        alignment: Alignment.center,
        height: 25,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          // color: Colors.blue,
        ),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child: icon,
              // const FaIcon(FontAwesomeIcons.phone,
              //     size: 15, color: Colors.orangeAccent),
            ),
            const SizedBox(width: 5.0),
            Text(
              title,
              // textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(fontSize: MediaQuery.of(context).size.width < 650 ? 12 : 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future openBrowserURL({required Uri url}) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
}
