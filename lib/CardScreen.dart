import 'package:flutter/material.dart';

class Cardscreen extends StatefulWidget {
  const Cardscreen({super.key});

  @override
  State<Cardscreen> createState() => _CardscreenState();
}

class _CardscreenState extends State<Cardscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: const [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Card(
              color: Colors.amber,
              child: Text('I am inside the card'),
            ),
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Card(
              color: Colors.red,
              child: Text("I inside it"),
            ),
          )
        ],
      )
      ),
    );
  }
}
