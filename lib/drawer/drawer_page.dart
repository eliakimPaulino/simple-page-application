import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: MediaQuery.of(context).size.width / 2.5,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.white),
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(36),
                  child: Image.asset('assets/img/favicon.png'),
                ),
                accountName: const Text(
                  'Contact Mais',
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  'contato@contactmais.com.br',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                title: const Text(
                  'Menu',
                  style: TextStyle(color: Colors.orange),
                ),
                // leading: const Icon(Icons.menu),
                trailing: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close, color: Colors.black),
                ),
              ),
              ...List.generate(
                __buttonsNames.length,
                (index) => Column(
                  children: [
                    Container(
                      decoration: index == _currentIndex
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: [Colors.orange, Colors.red],
                              ),
                            )
                          : null,
                      child: ListTile(
                        title: Text(
                          __buttonsNames[index].title,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        leading: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            __buttonsNames[index].icon,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                          });
                          if (__buttonsNames[index].presentation != null) {
                            showDialog(
                              context: context,
                              builder: (builder) => AlertDialog(
                                contentPadding: const EdgeInsets.all(20.0),
                                backgroundColor: Colors.deepOrange,
                                scrollable: true,
                                title: const Text(
                                  'Servi??os',
                                  style: TextStyle(color: Colors.black),
                                ),
                                content: Text(
                                  __buttonsNames[index].presentation,
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(color: Colors.white),
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
                          }
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuOptions {
  String title;
  String presentation;
  IconData icon;
  MenuOptions({
    required this.title,
    required this.presentation,
    required this.icon,
  });
}

int _currentIndex = 0;

List<MenuOptions> __buttonsNames = [
  // MenuOptions(title: 'In??cio', icon: Icons.home, presentation: ''),
  MenuOptions(
      title: 'Servi??os',
      icon: Icons.supervised_user_circle_outlined,
      presentation:
          '''Nosso time est?? preparado para entender a sua necessidade e atend??-lo(a) com os seguintes servi??os:\n 
- Empr??stimo com d??bito na conta de luz: Cr??dito Pessoal com D??bito na Conta de Luz, e Limites Personalizados!
- Empr??stimo Consignado INSS: Empr??stimo facilitado para voc?? que ?? Aposentado e Pensionista, BPC/LOAS.
- Cr??dito Pessoal no boleto: Cr??dito Pessoal no Boleto, com Limites Personalizados! Ideal para quem tem Carteira Assinada!
- Cart??o Benef??cio INSS: O Cart??o Benef??cio ?? um Cart??o de Cr??dito consignado, sem Anuidade e com desconto de parte do saldo da fautura na folha de pagamento!'''),
  MenuOptions(
      title: 'Sobre',
      icon: Icons.add_business_outlined,
      presentation:
          '''A Contact Mais?? n??o ?? uma Institui????o Financeira. Atuamos como Correspondente Banc??rio prestando Servi??os de Intermedia????o e Atendimento aos Clientes de nossos Parceiros. A atividade de Correspondente Banc??rio ?? regulada pelo Banco Central do Brasil nos termos da Resolu????o n?? 3.954, de fevereiro de 2011.\n\nSeguimos em constante atualiza????es e contamos com uma Completa Infraestrutura para Atender de forma Diferenciada nossos Clientes, nos destacando pela Excel??ncia nos Servi??os Prestados com Agilidade e Efici??ncia.'''),
];