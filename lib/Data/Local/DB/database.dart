import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'database.g.dart';

@DriftDatabase(
  include: {'tables.drift'},
)
class Database extends _$Database {
  Database() : super(_openConnection());

//////////////////////////////////////////////////////////////////////////////////////////////////
  //                Create
  Future<int> addCustomer(CustomerCompanion companion) async {
    try {
      return await into(customer).insert(companion);
    } catch (e) {
      return -1;
    }
  }

//////////////////////////////////////////////////////////////////////////////////////////////////
  //                Read
  Future<List<CustomerData>> getCustomer(String key, String value) async {
    //return await (select(customer)..where((tbl) => tbl.key.equals(value),)).get();
    if (key == 'firstname') {
      return await (select(customer)
            ..where(
              (tbl) => tbl.firstname.equals(value),
            ))
          .get();
    }
    if (key == 'lastname') {
      return await (select(customer)
            ..where(
              (tbl) => tbl.lastname.equals(value),
            ))
          .get();
    }
    if (key == 'dateOfBirth') {
      return await (select(customer)
            ..where(
              (tbl) => tbl.dateOfBirth.equals(value),
            ))
          .get();
    }
    if (key == 'phoneNumber') {
      return await (select(customer)
            ..where(
              (tbl) => tbl.phoneNumber.equals(value),
            ))
          .get();
    }
    if (key == 'email') {
      return await (select(customer)
            ..where(
              (tbl) => tbl.email.equals(value),
            ))
          .get();
    }
    if (key == 'bankAccountNumber') {
      return await (select(customer)
            ..where(
              (tbl) => tbl.bankAccountNumber.equals(value),
            ))
          .get();
    } else {
      return [];
    }
  }

//////////////////////////////////////////////////////////////////////////////////////////////////
  //                Delete
  Future<int> delCustomer(String key, String value) async {
    if (key == 'firstname') {
      return await (delete(customer)
            ..where(
              (tbl) => tbl.firstname.equals(value),
            ))
          .go();
    }
    if (key == 'lastname') {
      return await (delete(customer)
            ..where(
              (tbl) => tbl.lastname.equals(value),
            ))
          .go();
    }
    if (key == 'dateOfBirth') {
      return await (delete(customer)
            ..where(
              (tbl) => tbl.dateOfBirth.equals(value),
            ))
          .go();
    }
    if (key == 'phoneNumber') {
      return await (delete(customer)
            ..where(
              (tbl) => tbl.phoneNumber.equals(value),
            ))
          .go();
    }
    if (key == 'email') {
      return await (delete(customer)
            ..where(
              (tbl) => tbl.email.equals(value),
            ))
          .go();
    }
    if (key == 'bankAccountNumber') {
      return await (delete(customer)
            ..where(
              (tbl) => tbl.bankAccountNumber.equals(value),
            ))
          .go();
    }
    return -2;
  }

//////////////////////////////////////////////////////////////////////////////////////////////////
  //                Update
  Future<int> upCustomer(
      String key1, String key2, String value1, String value2) async {
        
    var temp;
    if (key1 == 'firstname') {
      if (key2 == 'firstname') {
        temp = await (update(customer)
              ..where((tbl) => tbl.firstname.equals(value1)))
            .write(CustomerCompanion(firstname: Value(value2)));
        return temp;
      }
      if (key2 == 'lastname') {
        temp = await (update(customer)
              ..where((tbl) => tbl.firstname.equals(value1)))
            .write(CustomerCompanion(lastname: Value(value2)));
        return temp;
      }
      if (key2 == 'dateOfBirth') {
        temp = await (update(customer)
              ..where((tbl) => tbl.firstname.equals(value1)))
            .write(CustomerCompanion(dateOfBirth: Value(value2)));
        return temp;
      }
      if (key2 == 'phoneNumber') {
        temp = await (update(customer)
              ..where((tbl) => tbl.firstname.equals(value1)))
            .write(CustomerCompanion(phoneNumber: Value(value2)));
        return temp;
      }
      if (key2 == 'email') {
        temp = await (update(customer)
              ..where((tbl) => tbl.firstname.equals(value1)))
            .write(CustomerCompanion(email: Value(value2)));
        return temp;
      }
      if (key2 == 'bankAccountNumber') {
        temp = await (update(customer)
              ..where((tbl) => tbl.firstname.equals(value1)))
            .write(CustomerCompanion(bankAccountNumber: Value(value2)));
        return temp;
      }
    }
    if (key1 == 'lastname') {
      if (key2 == 'firstname') {
        temp = await (update(customer)
              ..where((tbl) => tbl.lastname.equals(value1)))
            .write(CustomerCompanion(firstname: Value(value2)));
        return temp;
      }
      if (key2 == 'lastname') {
        temp = await (update(customer)
              ..where((tbl) => tbl.lastname.equals(value1)))
            .write(CustomerCompanion(lastname: Value(value2)));
        return temp;
      }
      if (key2 == 'dateOfBirth') {
        temp = await (update(customer)
              ..where((tbl) => tbl.lastname.equals(value1)))
            .write(CustomerCompanion(dateOfBirth: Value(value2)));
        return temp;
      }
      if (key2 == 'phoneNumber') {
        temp = await (update(customer)
              ..where((tbl) => tbl.lastname.equals(value1)))
            .write(CustomerCompanion(phoneNumber: Value(value2)));
        return temp;
      }
      if (key2 == 'email') {
        temp = await (update(customer)
              ..where((tbl) => tbl.lastname.equals(value1)))
            .write(CustomerCompanion(email: Value(value2)));
        return temp;
      }
      if (key2 == 'bankAccountNumber') {
        temp = await (update(customer)
              ..where((tbl) => tbl.lastname.equals(value1)))
            .write(CustomerCompanion(bankAccountNumber: Value(value2)));
        return temp;
      }
    }
    if (key1 == 'dateOfBirth') {
      if (key2 == 'firstname') {
        temp = await (update(customer)
              ..where((tbl) => tbl.dateOfBirth.equals(value1)))
            .write(CustomerCompanion(firstname: Value(value2)));
        return temp;
      }
      if (key2 == 'lastname') {
        temp = await (update(customer)
              ..where((tbl) => tbl.dateOfBirth.equals(value1)))
            .write(CustomerCompanion(lastname: Value(value2)));
        return temp;
      }
      if (key2 == 'dateOfBirth') {
        temp = await (update(customer)
              ..where((tbl) => tbl.dateOfBirth.equals(value1)))
            .write(CustomerCompanion(dateOfBirth: Value(value2)));
        return temp;
      }
      if (key2 == 'phoneNumber') {
        temp = await (update(customer)
              ..where((tbl) => tbl.dateOfBirth.equals(value1)))
            .write(CustomerCompanion(phoneNumber: Value(value2)));
        return temp;
      }
      if (key2 == 'email') {
        temp = await (update(customer)
              ..where((tbl) => tbl.dateOfBirth.equals(value1)))
            .write(CustomerCompanion(email: Value(value2)));
        return temp;
      }
      if (key2 == 'bankAccountNumber') {
        temp = await (update(customer)
              ..where((tbl) => tbl.dateOfBirth.equals(value1)))
            .write(CustomerCompanion(bankAccountNumber: Value(value2)));
        return temp;
      }
    }
    if (key1 == 'phoneNumber') {
      if (key2 == 'firstname') {
        temp = await (update(customer)
              ..where((tbl) => tbl.phoneNumber.equals(value1)))
            .write(CustomerCompanion(firstname: Value(value2)));
        return temp;
      }
      if (key2 == 'lastname') {
        temp = await (update(customer)
              ..where((tbl) => tbl.phoneNumber.equals(value1)))
            .write(CustomerCompanion(lastname: Value(value2)));
        return temp;
      }
      if (key2 == 'dateOfBirth') {
        temp = await (update(customer)
              ..where((tbl) => tbl.phoneNumber.equals(value1)))
            .write(CustomerCompanion(dateOfBirth: Value(value2)));
        return temp;
      }
      if (key2 == 'phoneNumber') {
        temp = await (update(customer)
              ..where((tbl) => tbl.phoneNumber.equals(value1)))
            .write(CustomerCompanion(phoneNumber: Value(value2)));
        return temp;
      }
      if (key2 == 'email') {
        temp = await (update(customer)
              ..where((tbl) => tbl.phoneNumber.equals(value1)))
            .write(CustomerCompanion(email: Value(value2)));
        return temp;
      }
      if (key2 == 'bankAccountNumber') {
        temp = await (update(customer)
              ..where((tbl) => tbl.phoneNumber.equals(value1)))
            .write(CustomerCompanion(bankAccountNumber: Value(value2)));
        return temp;
      }
    }
    if (key1 == 'email') {
      if (key2 == 'firstname') {
        temp = await (update(customer)
              ..where((tbl) => tbl.email.equals(value1)))
            .write(CustomerCompanion(firstname: Value(value2)));
        return temp;
      }
      if (key2 == 'lastname') {
        temp = await (update(customer)
              ..where((tbl) => tbl.email.equals(value1)))
            .write(CustomerCompanion(lastname: Value(value2)));
        return temp;
      }
      if (key2 == 'dateOfBirth') {
        temp = await (update(customer)
              ..where((tbl) => tbl.email.equals(value1)))
            .write(CustomerCompanion(dateOfBirth: Value(value2)));
        return temp;
      }
      if (key2 == 'phoneNumber') {
        temp = await (update(customer)
              ..where((tbl) => tbl.email.equals(value1)))
            .write(CustomerCompanion(phoneNumber: Value(value2)));
        return temp;
      }
      if (key2 == 'email') {
        temp = await (update(customer)
              ..where((tbl) => tbl.email.equals(value1)))
            .write(CustomerCompanion(email: Value(value2)));
        return temp;
      }
      if (key2 == 'bankAccountNumber') {
        temp = await (update(customer)
              ..where((tbl) => tbl.email.equals(value1)))
            .write(CustomerCompanion(bankAccountNumber: Value(value2)));
        return temp;
      }
    }
    if (key1 == 'bankAccountNumber') {
      if (key2 == 'firstname') {
        temp = await (update(customer)
              ..where((tbl) => tbl.bankAccountNumber.equals(value1)))
            .write(CustomerCompanion(firstname: Value(value2)));
        return temp;
      }
      if (key2 == 'lastname') {
        temp = await (update(customer)
              ..where((tbl) => tbl.bankAccountNumber.equals(value1)))
            .write(CustomerCompanion(lastname: Value(value2)));
        return temp;
      }
      if (key2 == 'dateOfBirth') {
        temp = await (update(customer)
              ..where((tbl) => tbl.bankAccountNumber.equals(value1)))
            .write(CustomerCompanion(dateOfBirth: Value(value2)));
        return temp;
      }
      if (key2 == 'phoneNumber') {
        temp = await (update(customer)
              ..where((tbl) => tbl.bankAccountNumber.equals(value1)))
            .write(CustomerCompanion(phoneNumber: Value(value2)));
        return temp;
      }
      if (key2 == 'email') {
        temp = await (update(customer)
              ..where((tbl) => tbl.bankAccountNumber.equals(value1)))
            .write(CustomerCompanion(email: Value(value2)));
        return temp;
      }
      if (key2 == 'bankAccountNumber') {
        temp = await (update(customer)
              ..where((tbl) => tbl.bankAccountNumber.equals(value1)))
            .write(CustomerCompanion(bankAccountNumber: Value(value2)));
        return temp;
      }
    }
    return -1;
  }

  //await select(customer)..where((tbl) => tbl.firstname.equals('m')).get();
  @override
  int get schemaVersion => 1;
}

// GeneratedColumn<String> key,
// Future<List<CustomerData>> getCustomer(String key, String value) async {
//   try {
//     //await select(customer)..where((tbl) => tbl.firstname.equals('m')).get();
//     final temp = '''select(customer)..where((tbl) => tbl.''' +
//         key +
//         '''.equals(''' +
//         value +
//         ''')).get();''';
//     print(temp);
//     print(await eval(temp, function: eval(temp)));
//     return await (eval(temp));
//   } catch (e) {
//     print(e);
//     return [];
//   }
// }

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'database.db'));
    return NativeDatabase.createInBackground(file);
  });
}
