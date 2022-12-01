// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'media_contact.dart';
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
            padding: EdgeInsets.all(16.0),
            child: Text(
              '''A Contact Mais® não é uma Instituição Financeira. Atuamos como Correspondente Bancário prestando Serviços de Intermediação e Atendimento aos Clientes de nossos Parceiros. A atividade de Correspondente Bancário é regulada pelo Banco Central do Brasil nos termos da Resolução nº 3.954, de fevereiro de 2011.\n\nSeguimos em constante atualizações e contamos com uma Completa Infraestrutura para Atender de forma Diferenciada nossos Clientes, nos destacando pela Excelência nos Serviços Prestados com Agilidade e Eficiência.''',
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(textStyle: style),
            ),
          ),
          SizedBox(
            child: Text(
              'CONTACT MAIS Tecnologia e Comunicação ®',
              textAlign: TextAlign.center,
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
          Column(
            children: [
              const SizedBox(height: 20),
              containerContato(context),
              const SizedBox(height: 20),
              // containerRedesSociais(context),
              wrapedSocialMedia(context),
              const SizedBox(height: 20),
            ],
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

Widget containerContato(context) {
  return SizedBox(
    height: 35.0,
    width: MediaQuery.of(context).size.width,
    // width: 415.0,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          PhoneContactTap(path: '08008801851', textPhone: '0800 880 1851'),
          SizedBox(width: 15),
          PhoneContactTap(path: '1236214715', textPhone: '(12) 3621-4715'),
          SizedBox(width: 15),
          PhoneContactTap(path: '1234222222', textPhone: '(12) 3422-2222'),
        ],
      ),
    ),
  );
}

Widget wrapedSocialMedia(context) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Wrap(
      direction: Axis.horizontal,
      clipBehavior: Clip.hardEdge,
      spacing: 20,
      //Vertical spacing when the widget shift to next line
      runSpacing: 20,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      children: const [
        MediaContactTap(
          path: 'https://www.facebook.com/GiuliaMRosa',
          title: 'Facebook',
          icon: FaIcon(FontAwesomeIcons.facebookF,
              size: 15, color: Colors.orangeAccent),
        ),
        MediaContactTap(
          path: 'https://www.instagram.com/contactmais/',
          title: 'Instagram',
          icon: FaIcon(FontAwesomeIcons.instagram,
              size: 15, color: Colors.orangeAccent),
        ),
        MediaContactTap(
          path: 'https://wa.link/3oyyu7',
          title: 'Whatsapp',
          icon: FaIcon(FontAwesomeIcons.whatsapp,
              size: 15, color: Colors.orangeAccent),
        ),
        MediaContactTap(
          path:
              'https://www.google.com.br/maps/place/CONTACT+PLUS+CORRETORA+DE+SEGUROS/@-23.015936,-45.5670512,15z/data=!4m5!3m4!1s0x0:0x1e0c71ee6abf8b05!8m2!3d-23.015936!4d-45.56705127',
          title: 'Localização',
          icon: FaIcon(FontAwesomeIcons.locationDot,
              size: 15, color: Colors.orangeAccent),
        ),
        MediaContactTap(
          path: 'mailto:contato@contactmais.com.br',
          title: 'E-Mail',
          icon: FaIcon(FontAwesomeIcons.envelope,
              size: 15, color: Colors.orangeAccent),
        ),
      ],
    ),
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
