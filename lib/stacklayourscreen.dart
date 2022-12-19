import 'package:flutter/material.dart';


class Stacklayoutscreen extends StatefulWidget {
  const Stacklayoutscreen({super.key});

  @override
  State<Stacklayoutscreen> createState() => _StacklayoutscreenState();
}

class _StacklayoutscreenState extends State<Stacklayoutscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Layout screen'),
      ),
      body: Stack(clipBehavior: Clip.none, children: [
        Positioned(
          top: 1,
          right: 1,
          child: Container(
              height: 400,
              width: 500,
              color: Colors.green,
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1S_CbL0G7MwUPz9gZT1tn3sHcTes09evTL1e_Y0Kypc7zOVEFShtd8PtkBAi9GuO9lxA&usqp=CAU')),
        ),
        Positioned(
          bottom: 1,
          right: 1,
          child: Container(
            height: 300,
            width: 500,
            color: Colors.amber,
            child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/9/92/The_death.png'),
          ),
        ),
        // Positioned(
        //   bottom: 1,
        //   right: 1,
        //   child: Container(
        //     height: 100,
        //     width: 100,
        //     color: Colors.blue,
        //     child: const Text('Container 4'),
        //   ),
        // ),
        // Positioned(
        //   bottom: -100,
        //   right: 100,
        //   child: Container(
        //     height: 100,
        //     width: 100,
        //     color: Color.fromARGB(255, 11, 14, 16),
        //     child: const Text('Container 4'),
        //   ),
        // ),
      ]),
    );
  }
}
