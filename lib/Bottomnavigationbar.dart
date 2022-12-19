import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Buttomnavigationscreen extends StatefulWidget {
  const Buttomnavigationscreen({super.key});

  @override
  State<Buttomnavigationscreen> createState() => _ButtomnavigationscreenState();
}

class _ButtomnavigationscreenState extends State<Buttomnavigationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttom Navigation'),
      ),
    );
    
  }
}
