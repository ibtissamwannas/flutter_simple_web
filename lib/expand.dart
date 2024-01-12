import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Flexible(
            child: FittedBox(
              child: Icon(
                Icons.ac_unit,
                size: 500,
              ),
            ),
          ),
          Container(
            color: Colors.yellow,
            height: 200,
            width: 200,
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              height: 20,
              child: const FittedBox(
                fit: BoxFit.scaleDown,
                child: Icon(
                  Icons.abc_outlined,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black,
            height: 200,
            width: 200,
          )
        ],
      ),
    );
  }
}
