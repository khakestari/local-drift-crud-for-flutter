import 'package:crudsample/Screens/Update/widget/form.dart';
import 'package:flutter/material.dart';
import 'package:crudsample/constants.dart';
import 'package:crudsample/Data/Local/DB/database.dart';

bool validateMobile(String value) {
  String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = new RegExp(pattern);
  if (value.length == 0) {
    return false;
  } else if (!regExp.hasMatch(value)) {
    return false;
  }
  return true;
}

bool validateEmail(String value) {
  String pattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  RegExp regExp = new RegExp(pattern);
  if (!regExp.hasMatch(value)) {
    return false;
  }
  return true;
}

bool validateBankAccountNumber(String value) {
  String pattern = r'(^[0-9]{16}$)';
  RegExp regExp = new RegExp(pattern);
  if (value.length == 0) {
    return false;
  } else if (!regExp.hasMatch(value)) {
    return false;
  }
  return true;
}

class Up extends StatefulWidget {
  @override
  State<Up> createState() => UpState();
}

class UpState extends State<Up> {
  Database database = Database();
  static var temp;
  String text = '';
  @override
  showtxt() {
    setState(() {
      if (temp != 0) {
        text = 'data modified successfuly!';
      } else {
        text = 'update failed!';
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
                final txt1 = form.txtController1.value.text;
                final txt2 = form.txtController2.value.text;
                var temp2 = [form.SelectCol2, txt2];
                if (form.SelectCol2 == 'phoneNumber' && !validateMobile(txt2)) {
                  print('not valid Mobile Number');
                  return;
                }
                if (form.SelectCol2 == 'email' && !validateEmail(txt2)) {
                  print('not valid email');
                  return;
                }
                if (form.SelectCol2 == 'bankAccountNumber' &&
                    !validateBankAccountNumber(txt2)) {
                  print('not valid BankAccountNumber');
                  return;
                }
                // condtion uniqe person
                if (form.SelectCol2 == 'firstname' ||
                    form.SelectCol2 == 'lastname' ||
                    form.SelectCol2 == 'dateOfBirth') {
                  List condition =
                      await database.getCustomer(form.SelectCol2, txt2);
                  List modif =
                      await database.getCustomer(form.SelectCol1, txt1);
                  print(modif);
                  // print(condition[0].lastname);
                  for (var i in condition) {
                    if (form.SelectCol2 == 'firstname' &&
                        i.firstname == txt2 &&
                        i.lastname == modif[0].lastname &&
                        i.dateOfBirth == modif[0].dateOfBirth) {
                      print('firstname + lastname + date of birth exist!');
                      return;
                    }
                    if (form.SelectCol2 == 'lastname' &&
                        i.firstname == modif[0].firstname &&
                        i.lastname == txt2 &&
                        i.dateOfBirth == modif[0].dateOfBirth) {
                      print('firstname + lastname + date of birth exist!');
                      return;
                    }
                    if (form.SelectCol2 == 'dateOfBirth' &&
                        i.firstname == modif[0].firstname &&
                        i.lastname == modif[0].lastname &&
                        i.dateOfBirth == txt2) {
                      print('firstname + lastname + date of birth exist!');
                      return;
                    }
                  }
                }

                if (txt1.isEmpty || txt2.isEmpty) {
                  return;
                }
                //await database.upCustomer('firstname', key2, value1, value2)
                temp = await database.upCustomer(
                    form.SelectCol1, form.SelectCol2, txt1, txt2);
                showtxt();
                print(temp.toString());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                width: double.infinity,
                child: const Text(
                  'Update',
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
      "Here you can Update data of db",
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
      "Update",
      style: TextStyle(color: color1),
    ),
  );
}
