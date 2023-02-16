import 'package:crudsample/Screens/Create/widget/form.dart';
import 'package:crudsample/constants.dart';
import 'package:flutter/material.dart';
import 'package:crudsample/Data/Local/DB/database.dart';
import 'package:drift/drift.dart' as d;

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => CreateState();
}

class CreateState extends State<Create> {
  Database database = Database();
  static var temp = '';
  String text = 'deafult';
  @override
  showtxt(txt) async {
    print(txt.toString() + 'ghabl');
    setState(() {
      temp = txt;
      // if (temp != 0) {
      //   print(txt.toString());
      // } else {
      //   temp = 'Error creating Customer!';
      // }
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
            SizedBox(height: 30,),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: color2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36),
                        side: BorderSide(color: color2))),
                onPressed: () async {
                  final firstname = form.FirstnameController.value.text;
                  final lastname = form.LastnameController.value.text;
                  final dateOfBirth = form.DateOfBirthController.value.text;
                  final phoneNumber = form.PhoneNumberController.value.text;
                  final email = form.EmailController.value.text;
                  final bankAccountNumber =
                      form.BankAccountNumberController.value.text;
                  if (firstname.isEmpty ||
                      lastname.isEmpty ||
                      dateOfBirth.isEmpty ||
                      phoneNumber.isEmpty ||
                      email.isEmpty ||
                      bankAccountNumber.isEmpty) {
                    showtxt("Fill all fields");
                    return;
                  }
                  // validation Mobile
                  if (!validateMobile(phoneNumber)) {
                    print('not valid Mobile Number');
                    showtxt("not valid Mobile Number");
                    return;
                  }
                  if (!validateEmail(email)) {
                    print('not valid email');
                    showtxt("not valid email");
                    return;
                  }
                  if (!validateBankAccountNumber(bankAccountNumber)) {
                    print('not valid BankAccountNumber');
                    showtxt("not valid BankAccountNumber");

                    return;
                  }
                  // condtion uniqe person
                  List condition =
                      await database.getCustomer('firstname', firstname);
                  // print(condition[0].lastname);
                  for (var i in condition) {
                    if (i.firstname == firstname &&
                        i.lastname == lastname &&
                        i.dateOfBirth == dateOfBirth) {
                      print('already exit!');
                      showtxt("already exit!");
                      return;
                    }
                  }
                  //if (firstname = ){}
                  var temp = await database.addCustomer(CustomerCompanion(
                      firstname: d.Value(firstname),
                      lastname: d.Value(lastname),
                      dateOfBirth: d.Value(dateOfBirth),
                      phoneNumber: d.Value(phoneNumber),
                      email: d.Value(email),
                      bankAccountNumber: d.Value(bankAccountNumber)));

                  // print(await database.getCustomer('email', 'vgu'));
                  // print(await database.delCustomer('firstname', 'mmrez'));
                  // print(await database.upCustomer('lastname', 'dateOfBirth', 'vgh', '9000'));
                  if (temp != -1) {
                    showtxt("Created Succesfuly");
                    print('Created Succesfuly');
                  } else {
                    showtxt("Email or Phone or Bank Number already exist");
                    print('Email or Phone or Bank Number already exist');
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: const Text(
                    'Create',
                    style: TextStyle(color: Color.fromARGB(255, 40, 46, 51)),
                  ),
                ),
              )),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Text(
              temp.toString(),
              style: TextStyle(
                  color: color2, fontSize: 17, fontWeight: FontWeight.w300),
            ),
          ),
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
