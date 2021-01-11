import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  final TextEditingController controller;

  const TextfieldWidget({
    Key key,
    @required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextField(
        controller: controller,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        decoration: InputDecoration(
          hintText: 'Enter Caption',
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      );
}
