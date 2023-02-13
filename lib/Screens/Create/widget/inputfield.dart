import 'package:flutter/material.dart';
import 'package:crudsample/constants.dart';

class inputfield extends StatelessWidget {
  const inputfield({
    Key? key,
    required this.lable,
    this.controller,
    this.type
  }) : super(key: key);
  final String lable;
  final controller;
  final type;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: type,
      style: TextStyle(color: Colors.white,),
      decoration: InputDecoration(labelText: lable, labelStyle: TextStyle(color: color2)),
    );
  }
}