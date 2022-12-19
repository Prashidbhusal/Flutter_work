import 'package:flutter/material.dart';
import 'package:myfirstapp/Bottomnavigationbar.dart';
import 'package:myfirstapp/Calculator.dart';
import 'package:myfirstapp/CardScreen.dart';
import 'package:myfirstapp/Gridscreen.dart';
import 'package:myfirstapp/RowsandColumn.dart';
import 'package:myfirstapp/SnackbarScreen.dart';
import 'package:myfirstapp/bottom_screen/dashboard.dart';
import 'package:myfirstapp/datatable_screen.dart';
// import 'package:myfirstapp/StudentDetails.dart';
import 'package:myfirstapp/displaystudent.dart';
import 'package:myfirstapp/flaxiblescreen.dart';
import 'package:myfirstapp/stacklayourscreen.dart';
import 'package:myfirstapp/student_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Different Screen',
    initialRoute: '/',
    routes: {
      //Button Navigation bar
      '/': (context) => const Dashboardscreen(),

      '/Buttomnavigationscreemn': (context) => const Buttomnavigationscreen(),
      '/Stacklayoutscreen': (context) => const Stacklayoutscreen(),
      '/DisplayTableScreen': (context) => const DisplayTableScreen(),
      '/Calculatorapp': (context) => const Calculatorapp(),

      '/GridScreen': (context) => const Gridscreen(),
      '/StudentDetailsScreen': (context) => const StudentDetailsScreen(),
      '/CardScreen': (context) => const CardScreen(),

      // '/StudentDetails': (context) => const StudentDetails(),
      '/Snackbarscreen': (context) => const Snackbarscreen(),
      '/rowscolumnscreen': (context) => const rowscolumnscreen(),
      '/flaxiblescreen': (context) => const flaxiblescreen(),
      '/displaydetails': (context) => const displaydetails(),
    },
  ));
}
