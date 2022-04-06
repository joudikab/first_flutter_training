import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return Container(
      constraints: BoxConstraints.expand(
        width: width,
        height: height,
      ),
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.JPEG'),
            fit: BoxFit.fill,
          )),
    );
  }
}
