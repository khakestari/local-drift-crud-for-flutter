import 'package:flutter/material.dart';
import 'package:crudsample/constants.dart';

class inputfield extends StatelessWidget {
  const inputfield({super.key, this.controller});
  final controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
          labelText: 'Data', labelStyle: TextStyle(color: color2)),
    );
  }
}
