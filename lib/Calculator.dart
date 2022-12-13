// ignore: file_names
import 'package:flutter/material.dart';

class Calculatorapp extends StatefulWidget {
  const Calculatorapp({super.key});

  @override
  State<Calculatorapp> createState() => _CalculatorappState();
}

class _CalculatorappState extends State<Calculatorapp> {
  final textcontroller = TextEditingController();
  Widget _textfield() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          child: TextFormField(
        textDirection: TextDirection.rtl,
        keyboardType: TextInputType.number,
        controller: textcontroller,
        enabled: false,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
      )),
    );
  }

  final List<String?> buttonname = [
    "c",
    "*",
    "/",
    "<-",
    "1",
    "2",
    "3",
    "+",
    "4",
    "5",
    "6",
    "-",
    "7",
    "8",
    "9",
    "^",
    "0",
    ".",
    "%",
    "="
  ];
  Widget _button(String name) {
    return SizedBox(
      height: 5,
      
      child: ElevatedButton(
        onPressed: () {
          setState(() {});
        },
        child: Text(name),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator App"),
      ),
      body: Column(
        children: [
          _textfield(),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(7),
              crossAxisCount: 4,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
              children: [
                for (int i = 0; i < buttonname.length; i++) ...{
                  _button(buttonname[i]!)
                }
              ],
            ),
          )
        ],
      ),
    );
  }
}
