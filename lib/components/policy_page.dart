import 'package:flutter/material.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: MediaQuery.of(context).size.height / 1.2,
        width: MediaQuery.of(context).size.width / 1.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white.withOpacity(0.1),
          // border: Border.all(width: 2, color: Colors.white30),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Política de Privacidade',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '''A CONTACT MAIS® está de acordo com a Lei Geral de Proteção de Dados nº 13.709/2018. Em tudo que fazemos, buscamos proteger seus dados e informações. Assim, nossa Política de Privacidade funciona da seguinte forma:''',
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Como coletamos dados pessoais sobre você?',
                        style:
                            TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '''Coletamos as informações que você compartilha, mediante consentimento, ao solicitar informações/cotações de nossos produtos e serviços, através do preenchimento dos formulários que disponibilizamos em nosso site.''',
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Como usamos os seus dados?',
                        style:
                            TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '''Utilizamos seus dados com o seu consentimento para:
                
•  informar oferta de produtos/serviços ou campanhas promocionais;
•  entrar em contato para realizar atendimento;
•  esclarecer suas dúvidas sobre nossos produtos;
•  calcular e enviar as cotações solicitadas.''',
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Com quem compartilhamos os seus dados?',
                        style:
                            TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '''Seus dados são compartilhados com terceiros, estritamente com sei consentimento, sendo elas única e exclusivamente as financeiras das quais somos correspondentes bancários.''',
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Como protegemos os seus dados?',
                        style:
                            TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '''Adotamos práticas e tecnologias alinhadas aos padrões técnicos e regulatórios de mercado, bem como controles que são sempre revisados e aprimorados. Seus dados pessoais são armazenados em local seguro, por meio da tecnologia cloud.''',
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Quais são os seus direitos em relação aos dados?',
                        style:
                            TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '''A qualquer momento, através dos meios de contato disponibilizados em nosso site, você poderá:

•  solicitar informações quais dados pessoais foram armazenados;
•  solicitar a retificação ou atualização dos seus dados pessoais;
•  solicitar a eliminação dos seus dados de nossa base de dados, desde que não exista algum impedimento legal ou regulatório que nos obrigue a mantê-los;
•  solicitar o não recebimento de e-mails marketing, enviados automaticamente pelo nosso site;
•  solicitar o seu cadastro para receber e-mails contendo oferta de produtos/serviços ou campanhas promocionais.''',
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Cookies',
                        style:
                            TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '''A Contact Mais e nossos parceiros usam cookies e tecnologias semelhantes para fornecer, manter e melhorar nossos serviços. Ao concordar, usaremos esses dados para personalização de anúncios e análises associadas.''',
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Contato',
                        style:
                            TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '''Caso precise de qualquer suporte ou tenha alguma dúvida, pedido ou sugestão em relação a essa Política, por favor entre em contato através de algum dos canais de atendimento divulgados em nosso site.''',
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Entendido'),
                ),
                const SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
