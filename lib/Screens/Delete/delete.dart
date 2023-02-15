import 'package:crudsample/Screens/Read/widget/form.dart';
import 'package:flutter/material.dart';
import 'package:crudsample/constants.dart';
import 'package:crudsample/Data/Local/DB/database.dart';

class Del extends StatefulWidget {
  @override
  State<Del> createState() => DelState();
}

class DelState extends State<Del> {
  Database database = Database();
  static var temp;
  String text = '';
  @override
  showtxt() {
    setState(() {
      if (temp != 0) {
        text = temp.toString() + ' Id' + ' Has been deleted';
      } else {
        text = 'there is no such data!';
      }
    });
  }

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
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: color2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                      side: BorderSide(color: color2))),
              onPressed: () async {
                final txt = form.txtController.value.text;
                if (txt.isEmpty) {
                  return;
                }
                temp = await database.delCustomer(form.SelectCol, txt);
                showtxt();
                print(temp.toString());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                width: double.infinity,
                child: const Text(
                  'Delete',
                  style: TextStyle(color: Color.fromARGB(255, 40, 46, 51)),
                ),
              ),
            ),
          ),
          Datatext(),
        ],
      )),
    );
  }

  Container Datatext() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Text(
        text,
        style:
            TextStyle(color: color2, fontSize: 17, fontWeight: FontWeight.w300),
      ),
    );
  }
}

Container TextOnTop() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    child: Text(
      "Here you can Delete data from db",
      style:
          TextStyle(color: color2, fontSize: 43, fontWeight: FontWeight.w500),
    ),
  );
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: color2,
    elevation: 0,
    centerTitle: true,
    title: Text(
      "Delete",
      style: TextStyle(color: color1),
    ),
  );
}
