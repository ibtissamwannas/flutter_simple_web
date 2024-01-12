import 'package:flutter/material.dart';

class AspectRatioS extends StatelessWidget {
  const AspectRatioS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 1, //5 / 1, // width 5 times the height
          child: Container(
            color: Colors.red,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}
