import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneContactTap extends StatelessWidget {
  const PhoneContactTap({Key? key, required this.path, required this.textPhone})
      : super(key: key);
  final String path;
  final String textPhone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: () => openBrowserURL(url: Uri.parse('tel:$path')),
        child: Container(
          height: 25,
          width: 150.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            // color: Colors.blue,
          ),
          child: Row(
            children: [
              Text(
                textPhone,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(width: 10.0),
              Container(
                alignment: Alignment.center,
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const FaIcon(FontAwesomeIcons.phone,
                    size: 15, color: Colors.orangeAccent),
              ),
            ],
          ),
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