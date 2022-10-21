import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 60,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25)),
                    child: IconButton(
                      icon: const FaIcon(FontAwesomeIcons.whatsapp,
                          color: Colors.white, size: 25),
                      onPressed: () async {
                        // final url =
                        // Uri(
                        //   scheme: 'https',
                        //   host: 'wa.link',
                        //   path: '/3oyyu7',
                        //   fragment: 'numbers',
                        // );
                        const String url = 'https://wa.link/3oyyu7';
                        // final url = Uri.parse('https://wa.link/3oyyu7');
                        openBrowserURL(url: url);
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                TextButton(
                  onPressed: () {},
                  child: const Text('Início', style: TextStyle(fontSize: 20)),
                ),
                const SizedBox(width: 15),
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
                        content: const Text(
                          '''Nosso time está preparado para entender a sua necessidade e atendê-lo(a) com os seguintes serviços:\n 
- Empréstimo com débito na conta de luz: Crédito Pessoal com Débito na Conta de Luz, e Limites Personalizados!
- Empréstimo Consignado INSS: Empréstimo facilitado para você que é Aposentado e Pensionista, BPC/LOAS.
- Crédito Pessoal no boleto: Crédito Pessoal no Boleto, com Limites Personalizados! Ideal para quem tem Carteira Assinada!
- Cartão Benefício INSS: O Cartão Benefício é um Cartão de Crédito consignado, sem Anuidade e com desconto de parte do saldo da fautura na folha de pagamento!''',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white),
                        ),
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
                  child: const Text('Serviços', style: TextStyle(fontSize: 20)),
                ),
                const SizedBox(width: 15),
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
                        content: const Text(
                          '''A Contact Mais® não é uma Instituição Financeira. Atuamos como Correspondente Bancário prestando Serviços de Intermediação e Atendimento aos Clientes de nossos Parceiros. A atividade de Correspondente Bancário é regulada pelo Banco Central do Brasil nos termos da Resolução nº 3.954, de fevereiro de 2011.\n\nSeguimos em constante atualizações e contamos com uma Completa Infraestrutura para Atender de forma Diferenciada nossos Clientes, nos destacando pela Excelência nos Serviços Prestados com Agilidade e Eficiência.''',
                          style: TextStyle(color: Colors.white),
                        ),
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
                  child: const Text('Sobre', style: TextStyle(fontSize: 20)),
                ),
                const SizedBox(width: 15),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1),
              child: Image.asset('assets/img/contact.png'),
            ),
          ],
        ),
      ),
    );
  }

  Future openBrowserURL({required String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
