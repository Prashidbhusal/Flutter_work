import 'package:flutter/material.dart';

import 'model/student.dart';

class DisplayTableScreen extends StatefulWidget {
  const DisplayTableScreen({super.key});

  @override
  State<DisplayTableScreen> createState() => _DisplayTableScreenState();
}

class _DisplayTableScreenState extends State<DisplayTableScreen> {
  List<Student> lststudents = [
    Student(fname: "Ram", age: 15),
    Student(fname: "Hari", age: 16),
    Student(fname: "sita", age: 20)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Table"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: DataTable(
            // border: TableBorder.all(),
            headingRowColor:
                MaterialStateColor.resolveWith((states) => Colors.amber),
            dataRowColor:
                MaterialStateColor.resolveWith((states) => Colors.lightBlue),
            // datatable widget
            columns: const [
              // column to set the name
              DataColumn(
                label: Text('Name'),
              ),
              DataColumn(
                label: Text('Roll no'),
              ),
              DataColumn(
                label: Text('Action'),
              ),
            ],
            rows: lststudents
                .map((student) => DataRow(cells: [
                      DataCell(
                        Text(student.fname!),
                      ),
                      DataCell(
                        Text(
                          student.age.toString(),
                        ),
                      ),
                      DataCell(Wrap(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                lststudents.remove(student);
                              });
                            },
                            icon: const Icon(Icons.delete),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {});

                              
                            },
                            icon: const Icon(Icons.edit),
                          ),
                        ],
                      ))
                    ]))
                .toList()),
      ),
    );
  }
}
