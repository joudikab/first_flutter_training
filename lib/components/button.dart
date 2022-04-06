import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:uni_training/screens/screen.dart';

class Button extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const Button({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return SizedBox(
      height: 56,
      width: width / 3,
      child: OutlinedButton(
          onPressed: onPressed,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(10),
            )),
          )),
    );
  }
}
