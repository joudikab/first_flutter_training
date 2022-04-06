import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'screen.dart';
import 'package:uni_training/components/component.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return Scaffold(
      body: Stack(
        children: [
          const BackGround(),
          Positioned(
            left: 20,
            bottom: height / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/flutter.svg',
                  height: 80,
                ),
                const Text(
                  'Flutter',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
                const Text(
                  'Training',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.normal,
                      color: Colors.blueAccent),
                ),
              ],
            ),
          ),
          Positioned(
            right: 40,
            bottom: 40,
            child: Button(
              text: 'Get Started',
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const Login(),
                    type: PageTransitionType.rotate,
                    alignment: Alignment.bottomRight,
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.easeInQuad,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
