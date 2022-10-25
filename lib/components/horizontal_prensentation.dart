// ignore_for_file: avoid_single_cascade_in_expression_statements, prefer_final_fields, must_be_immutable

import 'package:contactmais_page/components/content_video.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HorizontalPresentation extends StatefulWidget {
  const HorizontalPresentation({Key? key})
      : super(key: key);

  @override
  State<HorizontalPresentation> createState() => _HorizontalPresentationState();
}

class _HorizontalPresentationState extends State<HorizontalPresentation> {
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
              bottom: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (builder) => AlertDialog(
                      contentPadding: const EdgeInsets.all(20.0),
                      backgroundColor: const Color.fromRGBO(28, 79, 156, 1),
                      title: const Text(
                        'Atendimento em Libras',
                        style: TextStyle(color: Colors.orange),
                      ),
                      content: ContentVideoApresentacao(height: 350, width: 620),
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
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
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
