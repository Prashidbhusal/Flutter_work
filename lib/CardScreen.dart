// ignore: file_names
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  Widget _cardwidget(String title) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Card(
        color: Color.fromARGB(255, 192, 56, 185),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
            children: [for (int i = 0; i <= 20; i++) _cardwidget("card $i")]),
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// class Cardscreen extends StatefulWidget {
//   const Cardscreen({super.key});

//   @override
//   State<Cardscreen> createState() => _CardscreenState();
// }

// class _CardscreenState extends State<Cardscreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Card Screen'),
//       ),
//       body: SingleChildScrollView(
//           child: Column(
//         children: const [
//           SizedBox(
//             height: 200,
//             width: double.infinity,
//             child: Card(
//               color: Colors.amber,
//               child: Text('I am inside the card'),
//             ),
//           ),
//           SizedBox(
//             height: 200,
//             width: double.infinity,
//             child: Card(
//               color: Colors.red,
//               child: Text("I inside it"),
//             ),
//           )
//         ],
//       )
//       ),
//     );
//   }
// }
