import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart' as slid;

class ScaffoldCustomize extends StatefulWidget {
  const ScaffoldCustomize({Key? key}) : super(key: key);

  @override
  State<ScaffoldCustomize> createState() => _ScaffoldCustomizeState();
}

List images = [
  "assets/images/mcquen.png",
  "assets/images/tacchi.png",
  "assets/images/guzze.png",
  "assets/images/stiva.png",
  "assets/images/crocs.png",
  "assets/images/texas.png",
  "assets/images/zarre.png",
];
List occhiali = [
  "assets/images/guzzi.png",
  "assets/images/cool.png",
  "assets/images/harry.png",
  "assets/images/goccia.png",
  "assets/images/veloci.png"
];

List braccia = [
  "assets/images/tatoo2.png",
  "assets/images/tatoo1.png",
  "assets/images/muscoli.png",
];

List capelli = [
  "assets/images/ck.png",
  "assets/images/cri.png",
  "assets/images/donna.png",
  "assets/images/dread.png",
  "assets/images/hippie.png",
  "assets/images/jaco.png",
  "assets/images/normal.png",
  "assets/images/onepiece.png",
  "assets/images/picci.png",
  "assets/images/rapa.png",
  "assets/images/rapper.png",
  "assets/images/riccio.png",
  "assets/images/tiffany.png",
];

class _ScaffoldCustomizeState extends State<ScaffoldCustomize> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final slid.CarouselSliderController controller = slid.CarouselSliderController();
  final CarouselController controller2 = CarouselController();
  int i = 0;
  int bracciaIndex = 0;
  int occhialiIndex = 0;
  int capelliIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("TESTING"),
        ),
        body: Stack(
          //fit: StackFit.passthrough,
          children: [
            Center(
              child: SizedBox(
                width: 250,
                /*decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 6.0,
                      spreadRadius: 0.5,
                      offset: Offset(
                        0.7,
                        0.7,
                      ),
                    ),
                  ],
                ),*/
                child: Image.asset(
                  "assets/images/testfinalavatar.png",
                ),
              ),
            ),
            /*Positioned(
              // height: 0,
              // 
              //
              //
              //width: 0,
              left: 20,
              right: 0,
              top: 0,
              bottom: 18,
              child: CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(height: 500),
                items: occhiali
                    .map((e) => Image.asset(
                          e,
                          fit: BoxFit.contain,
                        ))
                    .toList(),
              ),
            ),*/
            /* Positioned(
              // height: 0,
              // width: 0,
              left: 0,
              right: 0,
              top: 0,
              bottom: -10,
              child: CarouselSlider(
                disableGesture: true,
                carouselController: controller2,
                options: CarouselOptions(height: 550),
                items: images
                    .map((e) => Image.asset(
                          e,
                          fit: BoxFit.cover,
                        ))
                    .toList(),

                /*slideBuilder: (index) {
                  return Image.asset(
                    images[index],
                    fit: BoxFit.contain,
                  );
                },*/
                //itemCount: images.length),
              ),
            ),*/
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: -10,
              child: Image.asset(
                images[i],
              ),
            ),
            Positioned(
              left: 20,
              right: 0,
              top: 0,
              bottom: 20,
              child: Image.asset(
                occhiali[occhialiIndex],
              ),
            ),
            Positioned(
              left: 0,
              right: -5,
              top: 0,
              bottom: -15,
              child: Image.asset(
                braccia[bracciaIndex],
              ),
            ),
            Positioned(
              left: 0,
              right: -0,
              top: 0,
              bottom: 20,
              child: Image.asset(
                capelli[capelliIndex],
              ),
            ),
            Positioned(
              left: 0,
              right: -300,
              top: 0,
              bottom: 240,
              child: Align(
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        capelliIndex++;
                        if (capelliIndex == capelli.length) {
                          capelliIndex = 0;
                        }
                      });
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_right,
                      size: 40,
                    )),
              ),
            ),
            Positioned(
              left: 0,
              right: -300,
              top: 0,
              bottom: 180,
              child: Align(
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        i++;
                        if (i == images.length) {
                          i = 0;
                        }
                      });
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_right,
                      size: 40,
                    )),
              ),
            ),
            Positioned(
              left: 0,
              right: -300,
              top: 0,
              bottom: 120,
              child: Align(
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        occhialiIndex++;
                        if (occhialiIndex == occhiali.length) {
                          occhialiIndex = 0;
                        }
                      });
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_right,
                      size: 40,
                    )),
              ),
            ),
            Positioned(
              left: 0,
              right: -300,
              top: 0,
              bottom: -40,
              child: Align(
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        bracciaIndex++;
                        if (bracciaIndex == braccia.length) {
                          bracciaIndex = 0;
                        }
                      });
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_right,
                      size: 40,
                    )),
              ),
            ),
            Positioned(
              left: 0,
              right: -300,
              top: 0,
              bottom: -200,
              child: Align(
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        i++;
                        if (i == images.length) {
                          i = 0;
                        }
                      });
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_right,
                      size: 40,
                    )),
              ),
            ),

            /*   Positioned(
              // height: 0,
              // width: 0,
              left: 0,
              right: 0,
              top: 0,
              bottom: -10,
              child: CarouselSlider(
                //carouselController: controller2,
                disableGesture: true,
                options: CarouselOptions(height: 550),
                items: images
                    .map((e) => Image.asset(
                          e,
                          fit: BoxFit.cover,
                        ))
                    .toList(),
              ),
            ),*/

            TextButton(onPressed: () {}, child: const Text("Ciao")),
          ],
        ));
  }
}
