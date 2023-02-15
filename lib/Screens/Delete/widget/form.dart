import 'package:crudsample/Screens/Delete/widget/inputfield.dart';
import 'package:flutter/material.dart';
import 'package:crudsample/constants.dart';

class form extends StatelessWidget {
  const form({
    Key? key,
  }) : super(key: key);
  static final txtController = TextEditingController();
  static var SelectCol;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: <Widget>[
            Schemselect(),
            const SizedBox(
              height: 30,
            ),
            inputfield(
              controller: txtController,
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ));
  }
}

class Schemselect extends StatefulWidget {
  @override
  State<Schemselect> createState() => _SchemselectState();
}

class _SchemselectState extends State<Schemselect> {
  String? selectedText;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(children: <Widget>[
          DropdownButton(
            hint: Text(
              'Column',
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
                  form.SelectCol = val.toString();
                },
              );
            },
          ),
        ]));
  }
}
