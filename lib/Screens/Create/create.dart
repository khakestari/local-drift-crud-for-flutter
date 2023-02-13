import 'package:crudsample/Screens/Create/widget/createbutton.dart';
import 'package:crudsample/Screens/Create/widget/form.dart';
import 'package:crudsample/constants.dart';
import 'package:flutter/material.dart';

class Create extends StatelessWidget {
  const Create({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextOnTop(),
            form(),
            SizedBox(height: 30,),
            createbutton(),
            SizedBox(height: 30,)
          ],)),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: color2,
      elevation: 0,
      centerTitle: true,
      title: Text("Create",style: TextStyle(color: color1),),

    );
  }
  Container TextOnTop() {
    return Container(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            child: Text("Here you can insert data in db", style: TextStyle(color: color2, fontSize: 43, fontWeight: FontWeight.w500),),);
  }
}

