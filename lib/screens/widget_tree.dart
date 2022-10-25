import 'package:cooky/cooky.dart' as cookie;
// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Widgets/components.dart';
import '../components/header.dart';
import '../components/horizontal_prensentation.dart';
import '../components/vertical_presentation.dart';
import '../drawer/drawer_page.dart';
import '../responsive/responsive.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: (ResponsiveLayout.isDesktop(context) ||
                ResponsiveLayout.isTablet(context))
            ? const Header()
            : AppBar(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                elevation: 0,
                actions: [
                  IconButton(
                    icon: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: FaIcon(FontAwesomeIcons.whatsapp,
                            color: Colors.white, size: 20),
                      ),
                    ),
                    onPressed: () async {
                      const String url = 'https://wa.link/3oyyu7';
                      openBrowserURL(url: url);
                    },
                  ),
                ],
              ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (ResponsiveLayout.isMobile(context))
              const VerticalPresentation()
            else
              const HorizontalPresentation(),
            Center(
              child: ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (rect) => const LinearGradient(colors: [
                  Colors.deepOrange,
                  Colors.orange,
                  Colors.deepOrange
                ]).createShader(rect),
                child: const Text(
                  'Qual a sua necessidade hoje?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            body(context),
          ],
        ),
      ),
      bottomNavigationBar: Visibility(
        visible: cookie.get('Kz_09Mn') == null,
        // visible: cookieVisibleBox == true,
        child: Container(
          padding: const EdgeInsets.all(8),
          height: ResponsiveLayout.isMobile(context) ? 110 : 65,
          color: Colors.orange.shade800,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      'A Contact Mais e parceiros usam cookies e tecnologias semelhantes para fornecer, manter e melhorar nossos serviços. Se você concordar, usaremos esses dados para personalização de anúncios e análises associadas.',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          cookie.set(
                            'Kz_09Mn',
                            'T3M_p0r4r1',
                            expires: DateTime.utc(2099),
                          );
                        },
                      );
                    },
                    child: const Text(
                      'Aceitar',
                      // style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          cookie.set(
                            'Kz_09Mn',
                            'T3M_p0r4r1',
                            maxAge: const Duration(days: 1),
                          );
                        },
                      );
                    },
                    child: const Text(
                      'Recusar',
                      // style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
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
