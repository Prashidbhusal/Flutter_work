// ignore: file_names
import 'package:flutter/material.dart';

class StudentDetails extends StatefulWidget {
  const StudentDetails({super.key});

  @override
  State<StudentDetails> createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  String? gender;
  int result = 0;
  String? valueChoose;
  String dropdownvalue = 'Item 1';
  final _globalKey = GlobalKey<FormState>();

  // List of items in our dropdown menu
  List listItem = ['Kathmandu', 'Pokhara', 'Mahendranagar', 'Dhangadi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
      ),
      body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: 'First Name'),
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Last Name'),
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Age'),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child:
                    // ignore: prefer_const_literals_to_create_immutables
                    Column(children: [
                  const Text(
                    "What is your Gender?",
                    style: TextStyle(fontSize: 15),
                  ),
                  const Divider(),
                  RadioListTile(
                    title: const Text("Male"),
                    value: "male",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {});
                      gender = value.toString();
                    },
                  ),
                  RadioListTile(
                    title: const Text("Female"),
                    value: "female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {});
                      gender = value.toString();
                    },
                  ),
                  RadioListTile(
                    title: const Text("Female"),
                    value: "female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {});
                      gender = value.toString();
                    },
                  ),
                  RadioListTile(
                    title: const Text("Other"),
                    value: "other",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {});
                      gender = value.toString();
                    },
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: DropdownButton(
                            hint: const Text('Address'),
                            dropdownColor: Colors.grey,
                            value: valueChoose,
                            icon: const Icon(Icons.arrow_downward),
                            elevation: 16,
                            isExpanded: true,
                            underline: const SizedBox(),
                            style: const TextStyle(
                                color: Colors.black, fontSize: 22),
                            onChanged: (newvalue) {
                              // This is called when the user selects an item.
                              setState(() {
                                valueChoose = newvalue!;
                              });
                            },
                            items: listItem.map<DropdownMenuItem>((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_globalKey.currentState!.validate()) {
                          setState(() {});
                        }
                      },
                      child: const Text('Save Student'),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_globalKey.currentState!.validate()) {
                          setState(() {});
                          Navigator.pushNamed(context, '/listtilescreen',
                              arguments: result);
                        }
                      },
                      child: const Text('Student Detail'),
                    ),
                  ),
                ]),
              )
            ],
          ))),
    );
  }
}


