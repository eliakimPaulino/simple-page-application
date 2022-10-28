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
        // onTap: () => openBrowserURL(url: Uri.parse('tel:$path')),
        onTap: MediaQuery.of(context).size.width < 600
            ? () => openBrowserURL(url: Uri.parse('tel:$path'))
            : () => openBrowserURL(url: Uri.parse('')),
        child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width < 650 ? 110 : 160,
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
                child: const FaIcon(FontAwesomeIcons.phone,
                    size: 15, color: Colors.orangeAccent),
              ),
              const SizedBox(width: 2.0),
              Text(
                textPhone,
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(fontSize:  MediaQuery.of(context).size.width < 650 ? 12 : 16),
                ),
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
