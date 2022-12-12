import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Snackbarscreen extends StatefulWidget {
  const Snackbarscreen({super.key});

  @override
  State<Snackbarscreen> createState() => _SnackbarscreenState();
}

class _SnackbarscreenState extends State<Snackbarscreen> {
  _showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text('Prs'),
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          action: SnackBarAction(
            label: 'OK',
            onPressed: () {},
            textColor: Colors.black,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackabarscreen'),
      ),
      body: Center(
          child: SizedBox(
        height: 50,
        width: 200,
        child: ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: "Helloform flutter toast",
              toastLength: Toast.LENGTH_SHORT,
            );

            // _showSnackbar();
          },
          child: const Text('Show SnackBar'),
        ),
      )
      ),
    );
  }
}
