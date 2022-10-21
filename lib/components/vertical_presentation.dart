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
            Positioned(
              top: 340,
              right: 10,
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
                      content: const Text(
                        'Contamos com uma equipe de profissionais habilitados para atender deficientes auditivos!',
                        style: TextStyle(color: Colors.white),
                      ),
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
                    borderRadius: BorderRadius.circular(25),
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
            SizedBox(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const SizedBox(height: 10),
                    Container(
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
                    Container(
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
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
