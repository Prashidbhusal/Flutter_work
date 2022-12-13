import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class rowscolumnscreen extends StatefulWidget {
  const rowscolumnscreen({super.key});

  @override
  State<rowscolumnscreen> createState() => _rowscolumnscreenState();
}

class _rowscolumnscreenState extends State<rowscolumnscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows and Column'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Expanded(
                  child: //Expanded: child or children widget take all the available spaces for rows or column
                      Container(
                height: 60,
                color: Color.fromARGB(255, 170, 17, 222),
                child: const Center(
                  child: Text('container1'),
                ),
              )),
              Expanded(
                  child: Container(
                height: 60,
                color: Color.fromARGB(255, 0, 31, 204),
                child: const Center(
                  child: Text('container2'),
                ),
              )),
              Expanded(
                  child: Container(
                height: 60,
                color: Colors.green,
                child: const Center(
                  child: Text('container3'),
                ),
              ))
            ],
          ),
          Column(
            children: [
              Container(
                height: 300,
                color: Colors.red,
              ),
              Container(
                height: 300,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              Container(
                height: 300,
                color: Color.fromARGB(255, 31, 238, 128),
              )
            ],
          )
        ]),
      ),
    );
  }
}

