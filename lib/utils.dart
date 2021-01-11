import 'package:flutter/material.dart';

class Utils {
  static void showSnackbar(BuildContext context, {@required String message}) {
    final snackbar = SnackBar(
      content: Text(message, style: TextStyle(fontSize: 20)),
      backgroundColor: Colors.red,
    );

    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackbar);
  }
}
