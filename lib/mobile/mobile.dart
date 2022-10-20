import 'package:flutter/material.dart';
import '../Widgets/components.dart';
import '../components/horizontal_prensentation.dart';
import '../components/vertical_presentation.dart';
import '../drawer/drawer_page.dart';
import '../responsive/responsive.dart';

class MobileContente extends StatelessWidget {
  const MobileContente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const DrawerPage(),
        backgroundColor: Colors.white,
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
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              body(context),
            ],
          ),
        ),
      ),
    );
  }
}
