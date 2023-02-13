import 'package:crudsample/Screens/Read/widget/form.dart';
import 'package:flutter/material.dart';
import 'package:crudsample/constants.dart';
import 'package:crudsample/Data/Local/DB/database.dart';

class Read extends StatefulWidget {
  @override
  State<Read> createState() => ReadState();
}

class ReadState extends State<Read> {
  Database database = Database();
  static var temp;
  String text = '';
  @override
  showtxt() {
    setState(() {
      //print((readbutton.temp).toString());
      text = temp.toString();
      //print(text.toString());
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
                temp = await database.getCustomer(form.SelectCol, txt);
                showtxt();
                print(temp.toString());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                width: double.infinity,
                child: const Text(
                  'Read',
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
      "Here you can read data from db",
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
      "Read",
      style: TextStyle(color: color1),
    ),
  );
}
