import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PartnersList extends StatefulWidget {
  const PartnersList({Key? key}) : super(key: key);

  @override
  State<PartnersList> createState() => _PartnersListState();
}

class _PartnersListState extends State<PartnersList> {
  final localImages = [
    'assets/partners/crefaz.png',
    'assets/partners/bancoBmg.png',
    'assets/partners/bancoDaycoval.png',
    'assets/partners/bancoPan.png',
    'assets/partners/bradesco.png',
    'assets/partners/oleConsignado.png',
    'assets/partners/safra.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20.0),
        Container(
            height: 2,
            width: MediaQuery.of(context).size.width / 1.5,
            color: Colors.orange),
        const SizedBox(height: 30.0),
        const Text(
          'Nossos Parceiros',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 10.0),
        const SizedBox(height: 10.0),
        ScrollConfiguration(
          behavior: MyCustomScrollBehavior(),
          child: SizedBox(
            height: 85.0,
            child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 90,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                ),
                itemCount: localImages.length,
                itemBuilder: (context, index, realIndex) {
                  final localImg = localImages[index];
                  return buildImg(localImg, index);
                }),
          ),
        ),
      ],
    );
  }

  Widget buildImg(String localImg, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        // width: double.infinity,
        // color: Colors.white,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Image(
            height: 85.0,
            width: 150.0,
            image: AssetImage(localImg),
            fit: BoxFit.contain,
          ),
        ),
      );
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class Partners {
  final String img;
  Partners({
    required this.img,
  });
}

List<Partners> banks = [
  Partners(img: 'assets/partners/crefaz.png'),
  Partners(img: 'assets/partners/bancoBmg.png'),
  Partners(img: 'assets/partners/bancoDaycoval.png'),
  Partners(img: 'assets/partners/bancoPan.png'),
  Partners(img: 'assets/partners/bradesco.png'),
  Partners(img: 'assets/partners/oleConsignado.png'),
  Partners(img: 'assets/partners/safra.png')
];
