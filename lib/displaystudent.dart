import 'package:flutter/material.dart';
import 'package:myfirstapp/model/student.dart';

// ignore: camel_case_types
class displaydetails extends StatefulWidget {
  const displaydetails({super.key});

  @override
  State<displaydetails> createState() => _displaydetailsState();
}

// ignore: camel_case_types
class _displaydetailsState extends State<displaydetails> {
  List<Student> lstStudent = [];
  @override
  void didChangeDependencies() {
    lstStudent = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Student'),
        elevation: 0,
      ),
      body: lstStudent.isNotEmpty
      
          ? ListView.builder(
            
          
              itemCount: lstStudent.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(lstStudent[index].fname!),
                  subtitle: Text(lstStudent[index].address!),
                  trailing: Wrap(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.delete),
                      )
                    ],
                  ),
                );
              })
          : const Center(
              child: Text('Data Xaina yesma'),
            ),
    );
  }
}
