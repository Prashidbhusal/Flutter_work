import 'package:flutter/material.dart';
import 'package:myfirstapp/CardScreen.dart';
import 'package:myfirstapp/RowsandColumn.dart';
import 'package:myfirstapp/SnackbarScreen.dart';
// import 'package:myfirstapp/StudentDetails.dart';
import 'package:myfirstapp/displaystudent.dart';
import 'package:myfirstapp/flaxiblescreen.dart';
import 'package:myfirstapp/student_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Different Screen',
    initialRoute: '/',
    routes: {
      '/': (context) => const StudentDetailsScreen(),
      '/Cardscreen': (context) => const Cardscreen(),
      // '/StudentDetails': (context) => const StudentDetails(),
      '/Snackbarscreen': (context) => const Snackbarscreen(),
      '/rowscolumnscreen': (context) => const rowscolumnscreen(),
      '/flaxiblescreen': (context) => const flaxiblescreen(),
      '/displaydetails': (context) => const displaydetails(),
    },
  ));
}
