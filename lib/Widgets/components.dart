import 'package:flutter/material.dart';
import '../components/end_page.dart';
import '../components/globe_position.dart';
import '../components/oportunity_card.dart';
import '../components/partners.dart';

Widget body(context) {
  return Column(
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            const GlobePosition(
              top: 30,
              right: -200,
            ),
            const GlobePosition(
              top: 700,
              left: -200,
            ),
            const GlobePosition(
              top: 1200,
              right: -200,
            ),
            const GlobePosition(
              top: 2000,
              left: -235,
            ),
            benefitList(),
          ],
        ),
      ),
      const EndPage(),
    ],
  );
}

Widget benefitList() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Wrap(
      spacing: 50,
      //Vertical spacing when the widget shift to next line
      runSpacing: 50,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      children: const [
        SizedBox(
          child: CardOportunity(
            path:
                'https://docs.google.com/forms/d/e/1FAIpQLScgF5rdiFS5-jxD-fGYummiH74CGtwf9uwYiAQE6j4T_1jo1Q/viewform',
            img: 'assets/img/capa_energia.png',
            title: "Empréstimo com débito na conta de luz",
            text:
                "Crédito Pessoal com Débito na Conta de Luz, e Limites Personalizados!",
            describer:
                '• Até R\$1.000,00 de Crédito!\n• 100% Digital, seguro e rápido!\n• Liberação em até 24hrs!\n• Sem necessidade de Comprovar Renda!',
          ),
        ),
        SizedBox(
          child: CardOportunity(
            path:
                'https://docs.google.com/forms/d/e/1FAIpQLSfcFzOhFfb-goAR8CX6Hq1iQvEYBR7nFHNyBwDeNINwwIlFMA/viewform',
            img: 'assets/img/capa_aposentados_pensionista.png',
            title: "Empréstimo Consignado INSS\n",
            text:
                "Empréstimo facilitado para você que é Aposentado e Pensionista, BPC/LOAS.",
            describer:
                '• 100% Digital!\n• Seguro e rápido!\n• Sem necessidade de Comprovar Renda!\n',
          ),
        ),
        SizedBox(
          child: CardOportunity(
            path:
                'https://docs.google.com/forms/d/e/1FAIpQLSd1XGkS1tY2RtK1OKm9S5YXX3bntjSfLNmNcVM9cXhqEnUZfg/viewform',
            img: 'assets/img/capa_boleto.png',
            title: "Crédito Pessoal no boleto\n",
            text:
                "Crédito Pessoal no Boleto, com Limites Personalizados! Ideal para quem tem Carteira Assinada!",
            describer:
                '• Até R\$10.000,00 de crédito!\n• 100% digital, seguro e rápido!\n• Liberação em até 24hrs!\n',
          ),
        ),
        SizedBox(
          child: CardOportunity(
            path:
                'https://docs.google.com/forms/d/e/1FAIpQLSfsa4ELeXKTfgjyUPhfbEpc34RtsIwOOYAIW3GYherPpqVAZw/viewform',
            img: 'assets/img/capa_credit_card.png',
            title: "Cartão Benefício INSS",
            text:
                "O Cartão Benefício é um Cartão de Crédito consignado, sem Anuidade e com desconto de parte do saldo da fautura na folha de pagamento!",
            describer:
                '• Para negativados!\n• Sem necessidade de comprovar renda!\n• 100% digital, seguro e rápido!\n',
          ),
        ),
        PartnersList(),
      ],
    ),
  );
}
