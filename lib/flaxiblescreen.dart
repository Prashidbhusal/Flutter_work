import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class flaxiblescreen extends StatefulWidget {
  const flaxiblescreen({super.key});

  @override
  State<flaxiblescreen> createState() => _flaxiblescreenState();
}

// ignore: camel_case_types
class _flaxiblescreenState extends State<flaxiblescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Colors.yellow,
            width: 600,
            height: 600,
            child: const Center(
              child: Text('1'),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              color: Colors.red,
              height: 600,
              width: 600,
              child: const Text('2'),
            ),
          )
        ]),
      ),
    );
  }
}
