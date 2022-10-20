import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalPresentation extends StatelessWidget {
  const VerticalPresentation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/mobile_site.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Center(
                      child: SizedBox(
                        height: 75,
                        width: 360,
                        child: Image.asset('assets/img/logo_branco.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      // width: MediaQuery.of(context).size.width / 3,
                      width: 300,
                      child: Text(
                        'Precisando de um empréstimo?',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: 400,
                      child: Text(
                        'Aqui você contrata seu empréstimo de forma 100% digital, segura e rápida, com todo o suporte que você precisa.',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
