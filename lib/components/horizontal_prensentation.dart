import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalPresentation extends StatelessWidget {
  const HorizontalPresentation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.centerRight,
                  image: AssetImage('assets/img/desktop_baner.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 18,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                      // height: MediaQuery.of(context).size.height / 4.9,
                      // width: MediaQuery.of(context).size.width / 2.5,
                      // height: 100,
                      width: 400,
                      child: Image.asset('assets/img/logo_branco.png',
                          fit: BoxFit.cover),
                    ),
                    SizedBox(
                      // height: MediaQuery.of(context).size.height / 6,
                      width: 400,
                      child: Text(
                        'Precisando de um empréstimo?',
                        // textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: true),
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 650,
                      child: Text(
                        'Aqui você contrata seu empréstimo de forma 100% digital, segura e rápida, com todo o suporte que você precisa.',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 24,
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