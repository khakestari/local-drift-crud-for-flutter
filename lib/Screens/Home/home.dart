import 'package:crudsample/Screens/Home/widget/option.dart';
import 'package:flutter/material.dart';
import 'package:crudsample/constants.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      body: SingleChildScrollView(
          child: Center(
            child: Option(),
          ),
        ),
    );
  }
}

