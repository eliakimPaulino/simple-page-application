// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'policy_page.dart';
import 'phone_contact.dart';

class EndPage extends StatelessWidget {
  const EndPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = TextStyle(fontSize: 17);
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.orangeAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(48.0),
            child: Text(
              '''A Contact Mais® não é uma Instituição Financeira. Atuamos como Correspondente Bancário prestando Serviços de Intermediação e Atendimento aos Clientes de nossos Parceiros. A atividade de Correspondente Bancário é regulada pelo Banco Central do Brasil nos termos da Resolução nº 3.954, de fevereiro de 2011.\n\nSeguimos em constante atualizações e contamos com uma Completa Infraestrutura para Atender de forma Diferenciada nossos Clientes, nos destacando pela Excelência nos Serviços Prestados com Agilidade e Eficiencia.''',
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(textStyle: style),
            ),
          ),
          SizedBox(
            child: Text(
              'CONTACT MAIS Tecnologia e Comunicação ®',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                    fontSize: 22,
                    letterSpacing: 1.5,
                    leadingDistribution: TextLeadingDistribution.proportional),
              ),
            ),
          ),
          SizedBox(
            child: Text(
              '''CNPJ 23.502.238/0001-10 Rua Domingues Ribas, 795 Taubaté/SP\nContact Mais ® 2022''',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                    fontSize: 16,
                    // leadingDistribution: TextLeadingDistribution.proportional,
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              spacing: 50,
              runSpacing: 30,
              runAlignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.start,
              alignment: WrapAlignment.spaceBetween,
              children: [
                // containerEndereco(context),
                containerContato(context),
                containerRedesSociais(context),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
              height: 2,
              width: MediaQuery.of(context).size.width / 1.5,
              color: Colors.black),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              onPrimary: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return PolicyPage();
                  });
            },
            child: const Text('Política de Privacidade'),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}

Widget containerEndereco(context) {
  return Container(
    alignment: Alignment.center,
    color: Colors.orangeAccent,
    height: 250.0,
    width: 200.0,
    child: Text(
      '''CNPJ 23.502.238/0001-10
Rua Domingues Ribas, 795 Taubaté /SP\n
Contact Mais © 2022''',
      style: GoogleFonts.roboto(
        textStyle: const TextStyle(fontSize: 16),
      ),
    ),
  );
}

Widget containerContato(context) {
  return SizedBox(
    height: 250.0,
    width: 200.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        PhoneContactTap(path: '08008801851', textPhone: '0800 880 1851'),
        SizedBox(height: 15),
        PhoneContactTap(path: '1236214715', textPhone: '(12) 3621-4715'),
        SizedBox(height: 15),
        PhoneContactTap(path: '1234222222', textPhone: '(12) 3422-2222'),
      ],
    ),
  );
}

Widget containerRedesSociais(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 300.0,
        width: 200.0,
        child: ListView(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0.1),
              onTap: () {
                final url = Uri.parse('https://www.facebook.com/GiuliaMRosa');
                openBrowserURL(url: url);
              },
              leading: FaIcon(FontAwesomeIcons.facebookF,
                  size: 20, color: Colors.black),
              title: Container(
                width: 25.0,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  'Facebook',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(0.1),
              onTap: () {
                final url = Uri.parse('https://www.instagram.com/contactmais/');
                openBrowserURL(url: url);
              },
              leading: FaIcon(FontAwesomeIcons.instagram,
                  size: 20, color: Colors.black),
              title: Container(
                width: 25.0,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  'Instagram',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(0.1),
              onTap: () {
                // final url = Uri.parse('https://wa.link/3oyyu7');
                const String url = 'https://wa.link/3oyyu7';
                openBrowserURLolder(url: url);
              },
              leading: FaIcon(FontAwesomeIcons.whatsapp,
                  size: 20, color: Colors.black),
              title: Container(
                width: 25.0,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  'WhatsApp',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(0.1),
              onTap: () {
                final url = Uri.parse(
                    'https://www.google.com.br/maps/place/CONTACT+PLUS+CORRETORA+DE+SEGUROS/@-23.015936,-45.5670512,15z/data=!4m5!3m4!1s0x0:0x1e0c71ee6abf8b05!8m2!3d-23.015936!4d-45.56705127');
                openBrowserURL(url: url);
              },
              leading: FaIcon(FontAwesomeIcons.locationDot,
                  size: 20, color: Colors.black),
              title: Container(
                width: 25.0,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
                child: Text(
                  'Localização',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(0.1),
              onTap: () {
                final url = Uri(
                    scheme: 'mailto',
                    path: 'mailto:contato@contactmais.com.br',
                    queryParameters: {
                      'subject': 'Gostaria de saber mais sobre os produtos'
                    });
                openBrowserURL(url: url);
              },
              leading: FaIcon(FontAwesomeIcons.envelope,
                  size: 20, color: Colors.black),
              title: Container(
                width: 25.0,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  'Mail',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Future openBrowserURL({required Uri url}) async {
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  }
}

Future openBrowserURLolder({required String url}) async {
  if (await canLaunch(url)) {
    await launch(url);
  }
}
