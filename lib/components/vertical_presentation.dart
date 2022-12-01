// ignore_for_file: must_call_super, prefer_final_fields, avoid_single_cascade_in_expression_statements

import 'package:contactmais/components/content_video.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'content_video.dart';

class VerticalPresentation extends StatefulWidget {
  const VerticalPresentation({Key? key}) : super(key: key);

  @override
  State<VerticalPresentation> createState() => _VerticalPresentationState();
}

class _VerticalPresentationState extends State<VerticalPresentation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: 450,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage('assets/img/mobile_site.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu_rounded),
                  ),
                  IconButton(
                    onPressed: () {
                      const text = 'Funcionalidades em construção';
                      const snackBar = SnackBar(
                        content: Text(text),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    icon: const Icon(Icons.person),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 450,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const SizedBox(height: 10),
                    SizedBox(
                      // color: Colors.blue,
                      height: 80,
                      width: 350,
                      child: Image.asset('assets/img/logo_branco.png',
                          fit: BoxFit.fitWidth),
                    ),
                    const SizedBox(height: 10),
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
                      // color: Colors.blue,
                      height: 150,
                      width: 400,
                      child: Text(
                        'Aqui você contrata seu empréstimo de forma 100% digital, segura e rápida, com todo o suporte que você precisa.',
                        maxLines: 4,
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
            Positioned(
              bottom: 20,
              right: 20,
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
                      content:
                          ContentVideoApresentacao(height: 198, width: 350),
                      // const Text(
                      //   'Contamos com uma equipe de profissionais habilitados para atender deficientes auditivos!',
                      //   style: TextStyle(color: Colors.white),
                      // ),
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
                  height: 60,
                  width: 60,
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
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Future openBrowserURL({required String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
