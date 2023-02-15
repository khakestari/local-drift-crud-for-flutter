import 'package:crudsample/Screens/Update/widget/inputfield.dart';
import 'package:flutter/material.dart';
import 'package:crudsample/constants.dart';

class form extends StatelessWidget {
  const form({
    Key? key,
  }) : super(key: key);
  static final txtController1 = TextEditingController();
  static final txtController2 = TextEditingController();
  static var SelectCol1;
  static var SelectCol2;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Schemselect1(),
                Flexible(
                  child: inputfield(
                    controller: txtController1,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Schemselect2(),
                Flexible(
                  child: inputfield(
                    controller: txtController2,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class Schemselect1 extends StatefulWidget {
  @override
  State<Schemselect1> createState() => _Schemselect1State();
}

class _Schemselect1State extends State<Schemselect1> {
  String? selectedText;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(children: <Widget>[
          DropdownButton(
            hint: Text(
              'First Column',
              style: TextStyle(color: color2),
            ),
            value: selectedText,
            items: <String>['phoneNumber', 'email', 'bankAccountNumber']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(color: color2),
                ),
              );
            }).toList(),
            onChanged: (val) {
              setState(
                () {
                  selectedText = val.toString();
                  form.SelectCol1 = val.toString();
                },
              );
            },
          ),
        ]));
  }
}

class Schemselect2 extends StatefulWidget {
  @override
  State<Schemselect2> createState() => _Schemselect2State();
}

class _Schemselect2State extends State<Schemselect2> {
  String? selectedText;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(children: <Widget>[
          DropdownButton(
            hint: Text(
              'Second Column',
              style: TextStyle(color: color2),
            ),
            value: selectedText,
            items: <String>[
              'firstname',
              'lastname',
              'dateOfBirth',
              'phoneNumber',
              'email',
              'bankAccountNumber'
            ].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(color: color2),
                ),
              );
            }).toList(),
            onChanged: (val) {
              setState(
                () {
                  selectedText = val.toString();
                  form.SelectCol2 = val.toString();
                },
              );
            },
          ),
        ]));
  }
}
