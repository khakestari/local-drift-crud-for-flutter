import 'package:crudsample/Screens/Create/widget/inputfield.dart';
import 'package:flutter/material.dart';

class form extends StatelessWidget {
  const form({
    Key? key,
  }) : super(key: key);

  static final FirstnameController = TextEditingController();
  static final LastnameController = TextEditingController();
  static final DateOfBirthController = TextEditingController();
  static final PhoneNumberController = TextEditingController();
  static final EmailController = TextEditingController();
  static final BankAccountNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: <Widget>[
          inputfield(
            lable: 'Firstname',
            controller: FirstnameController,
          ),
          const SizedBox(
            height: 20,
          ),
          inputfield(
            lable: 'Lastname',
            controller: LastnameController,
          ),
          const SizedBox(
            height: 20,
          ),
          inputfield(
            lable: 'DateOfBirth',
            controller: DateOfBirthController,
          ),
          const SizedBox(
            height: 20,
          ),
          inputfield(
            lable: 'PhoneNumber',
            controller: PhoneNumberController,
            type: TextInputType.number,
          ),
          const SizedBox(
            height: 20,
          ),
          inputfield(
            lable: 'Email',
            controller: EmailController,
          ),
          const SizedBox(
            height: 20,
          ),
          inputfield(
            lable: 'BankAccountNumber',
            controller: BankAccountNumberController,
            type: TextInputType.number,
          )
        ],
      ),
    );
  }
}
