import 'package:crudsample/Screens/Create/widget/inputfield.dart';
import 'package:crudsample/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class form extends StatefulWidget {
  const form({
    Key? key,
  }) : super(key: key);

  static final FirstnameController = TextEditingController();
  static final LastnameController = TextEditingController();
  static final DateOfBirthController = TextEditingController();
  static final PhoneNumberController = TextEditingController();
  static final EmailController = TextEditingController();
  static final BankAccountNumberController = TextEditingController();
  static DateTime? _dateOfBirth;

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: <Widget>[
          inputfield(
            lable: 'Firstname',
            controller: form.FirstnameController,
          ),
          const SizedBox(
            height: 20,
          ),
          inputfield(
            lable: 'Lastname',
            controller: form.LastnameController,
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
                labelText: 'DateOfBirth', labelStyle: TextStyle(color: color2)),
            controller: form.DateOfBirthController,
            onTap: () => pickDateOfBith(context),
          ),
          // inputfield(
          //   lable: 'DateOfBirth',
          //   controller: form.DateOfBirthController,
          // ),
          const SizedBox(
            height: 20,
          ),
          inputfield(
            lable: 'PhoneNumber',
            controller: form.PhoneNumberController,
            type: TextInputType.number,
          ),
          const SizedBox(
            height: 20,
          ),
          inputfield(
            lable: 'Email',
            controller: form.EmailController,
          ),
          const SizedBox(
            height: 20,
          ),
          inputfield(
            lable: 'BankAccountNumber',
            controller: form.BankAccountNumberController,
            type: TextInputType.number,
          )
        ],
      ),
    );
  }
  Future<void> pickDateOfBith(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
        context: context,
        initialDate: form._dateOfBirth ?? initialDate,
        firstDate: DateTime(DateTime.now().year - 100),
        lastDate: DateTime(DateTime.now().year + 1),
        builder: (context, child) => Theme(
            data: ThemeData().copyWith(
              colorScheme: const ColorScheme.light(
                  primary: Color.fromARGB(255, 111, 196, 213),
                  onPrimary: Colors.black,
                  onSurface: Colors.white),
              dialogBackgroundColor: color1,
              shadowColor: color2,
            ),
            child: child ?? const Text('')));
    if (newDate == null) {
      return;
    }
    setState(() {
      form._dateOfBirth = newDate;
      String dob = DateFormat('MM/dd/yyyy').format(newDate);
      form.DateOfBirthController.text = dob;
    });
  }
}

