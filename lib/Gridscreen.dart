import 'package:flutter/material.dart';

class Gridscreen extends StatefulWidget {
  const Gridscreen({super.key});

  @override
  State<Gridscreen> createState() => _GridscreenState();
}

class _GridscreenState extends State<Gridscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Screen'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 8,
        mainAxisSpacing: 2,
        crossAxisCount: 2,
        children: [
          for (int i = 1; i <= 10; i++) ...{
            SizedBox(
                child: ElevatedButton(
              onPressed: () {},
              child: Text(
                '$i',
                style: const TextStyle(fontSize: 50),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.black26),
            ))
          }
        ],
      ),
    );
  }
}
