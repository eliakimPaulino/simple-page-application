// ignore_for_file: avoid_single_cascade_in_expression_statements, prefer_final_fields, must_be_immutable

import 'package:contactmais/components/content_video.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalPresentation extends StatefulWidget {
  const HorizontalPresentation({Key? key}) : super(key: key);

  @override
  State<HorizontalPresentation> createState() => _HorizontalPresentationState();
}

class _HorizontalPresentationState extends State<HorizontalPresentation> {
  var servicos = const Text(
    '''Nosso time está preparado para entender a sua necessidade e atendê-lo(a) com os seguintes serviços:\n 
- Empréstimo com débito na conta de luz: Crédito Pessoal com Débito na Conta de Luz, e Limites Personalizados!
- Empréstimo Consignado INSS: Empréstimo facilitado para você que é Aposentado e Pensionista, BPC/LOAS.
- Crédito Pessoal no boleto: Crédito Pessoal no Boleto, com Limites Personalizados! Ideal para quem tem Carteira Assinada!
- Cartão Benefício INSS: O Cartão Benefício é um Cartão de Crédito consignado, sem Anuidade e com desconto de parte do saldo da fautura na folha de pagamento!''',
    textAlign: TextAlign.start,
    style: TextStyle(color: Colors.white),
  );

  var sobre = const Text(
    '''A Contact Mais® não é uma Instituição Financeira. Atuamos como Correspondente Bancário prestando Serviços de Intermediação e Atendimento aos Clientes de nossos Parceiros. A atividade de Correspondente Bancário é regulada pelo Banco Central do Brasil nos termos da Resolução nº 3.954, de fevereiro de 2011.\n\nSeguimos em constante atualizações e contamos com uma Completa Infraestrutura para Atender de forma Diferenciada nossos Clientes, nos destacando pela Excelência nos Serviços Prestados com Agilidade e Eficiência.''',
    style: TextStyle(color: Colors.white),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: 450,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                image: DecorationImage(
                  alignment: Alignment.centerRight,
                  image: AssetImage('assets/img/desktop_baner.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (builder) => AlertDialog(
                                contentPadding: const EdgeInsets.all(20.0),
                                backgroundColor: Colors.deepOrange,
                                scrollable: true,
                                title: const Text(
                                  'Serviços',
                                  style: TextStyle(color: Colors.black),
                                ),
                                content: servicos,
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text(
                                      'Fechar',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: const Text('Serviços',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18)),
                        ),
                        TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (builder) => AlertDialog(
                                contentPadding: const EdgeInsets.all(20.0),
                                backgroundColor: Colors.deepOrange,
                                scrollable: true,
                                title: const Text(
                                  'Sobre',
                                  style: TextStyle(color: Colors.black),
                                ),
                                content: sobre,
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text(
                                      'Fechar',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: const Text('Sobre',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18)),
                        ),
                      ],
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
                  ]),
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
                      content:
                          ContentVideoApresentacao(height: 350, width: 620),
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
              bottom: -150,
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
