// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class Customer extends Table with TableInfo<Customer, CustomerData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Customer(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'ID', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _firstnameMeta =
      const VerificationMeta('firstname');
  late final GeneratedColumn<String> firstname = GeneratedColumn<String>(
      'Firstname', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _lastnameMeta =
      const VerificationMeta('lastname');
  late final GeneratedColumn<String> lastname = GeneratedColumn<String>(
      'Lastname', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _dateOfBirthMeta =
      const VerificationMeta('dateOfBirth');
  late final GeneratedColumn<String> dateOfBirth = GeneratedColumn<String>(
      'DateOfBirth', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'PhoneNumber', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'Email', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'UNIQUE');
  static const VerificationMeta _bankAccountNumberMeta =
      const VerificationMeta('bankAccountNumber');
  late final GeneratedColumn<String> bankAccountNumber =
      GeneratedColumn<String>('BankAccountNumber', aliasedName, true,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        firstname,
        lastname,
        dateOfBirth,
        phoneNumber,
        email,
        bankAccountNumber
      ];
  @override
  String get aliasedName => _alias ?? 'customer';
  @override
  String get actualTableName => 'customer';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ID')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['ID']!, _idMeta));
    }
    if (data.containsKey('Firstname')) {
      context.handle(_firstnameMeta,
          firstname.isAcceptableOrUnknown(data['Firstname']!, _firstnameMeta));
    }
    if (data.containsKey('Lastname')) {
      context.handle(_lastnameMeta,
          lastname.isAcceptableOrUnknown(data['Lastname']!, _lastnameMeta));
    }
    if (data.containsKey('DateOfBirth')) {
      context.handle(
          _dateOfBirthMeta,
          dateOfBirth.isAcceptableOrUnknown(
              data['DateOfBirth']!, _dateOfBirthMeta));
    }
    if (data.containsKey('PhoneNumber')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['PhoneNumber']!, _phoneNumberMeta));
    }
    if (data.containsKey('Email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['Email']!, _emailMeta));
    }
    if (data.containsKey('BankAccountNumber')) {
      context.handle(
          _bankAccountNumberMeta,
          bankAccountNumber.isAcceptableOrUnknown(
              data['BankAccountNumber']!, _bankAccountNumberMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CustomerData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ID'])!,
      firstname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Firstname']),
      lastname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Lastname']),
      dateOfBirth: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DateOfBirth']),
      phoneNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}PhoneNumber']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Email']),
      bankAccountNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}BankAccountNumber']),
    );
  }

  @override
  Customer createAlias(String alias) {
    return Customer(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class CustomerData extends DataClass implements Insertable<CustomerData> {
  final int id;
  final String? firstname;
  final String? lastname;
  final String? dateOfBirth;
  final String? phoneNumber;
  final String? email;
  final String? bankAccountNumber;
  const CustomerData(
      {required this.id,
      this.firstname,
      this.lastname,
      this.dateOfBirth,
      this.phoneNumber,
      this.email,
      this.bankAccountNumber});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID'] = Variable<int>(id);
    if (!nullToAbsent || firstname != null) {
      map['Firstname'] = Variable<String>(firstname);
    }
    if (!nullToAbsent || lastname != null) {
      map['Lastname'] = Variable<String>(lastname);
    }
    if (!nullToAbsent || dateOfBirth != null) {
      map['DateOfBirth'] = Variable<String>(dateOfBirth);
    }
    if (!nullToAbsent || phoneNumber != null) {
      map['PhoneNumber'] = Variable<String>(phoneNumber);
    }
    if (!nullToAbsent || email != null) {
      map['Email'] = Variable<String>(email);
    }
    if (!nullToAbsent || bankAccountNumber != null) {
      map['BankAccountNumber'] = Variable<String>(bankAccountNumber);
    }
    return map;
  }

  CustomerCompanion toCompanion(bool nullToAbsent) {
    return CustomerCompanion(
      id: Value(id),
      firstname: firstname == null && nullToAbsent
          ? const Value.absent()
          : Value(firstname),
      lastname: lastname == null && nullToAbsent
          ? const Value.absent()
          : Value(lastname),
      dateOfBirth: dateOfBirth == null && nullToAbsent
          ? const Value.absent()
          : Value(dateOfBirth),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      bankAccountNumber: bankAccountNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(bankAccountNumber),
    );
  }

  factory CustomerData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CustomerData(
      id: serializer.fromJson<int>(json['ID']),
      firstname: serializer.fromJson<String?>(json['Firstname']),
      lastname: serializer.fromJson<String?>(json['Lastname']),
      dateOfBirth: serializer.fromJson<String?>(json['DateOfBirth']),
      phoneNumber: serializer.fromJson<String?>(json['PhoneNumber']),
      email: serializer.fromJson<String?>(json['Email']),
      bankAccountNumber:
          serializer.fromJson<String?>(json['BankAccountNumber']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'ID': serializer.toJson<int>(id),
      'Firstname': serializer.toJson<String?>(firstname),
      'Lastname': serializer.toJson<String?>(lastname),
      'DateOfBirth': serializer.toJson<String?>(dateOfBirth),
      'PhoneNumber': serializer.toJson<String?>(phoneNumber),
      'Email': serializer.toJson<String?>(email),
      'BankAccountNumber': serializer.toJson<String?>(bankAccountNumber),
    };
  }

  CustomerData copyWith(
          {int? id,
          Value<String?> firstname = const Value.absent(),
          Value<String?> lastname = const Value.absent(),
          Value<String?> dateOfBirth = const Value.absent(),
          Value<String?> phoneNumber = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> bankAccountNumber = const Value.absent()}) =>
      CustomerData(
        id: id ?? this.id,
        firstname: firstname.present ? firstname.value : this.firstname,
        lastname: lastname.present ? lastname.value : this.lastname,
        dateOfBirth: dateOfBirth.present ? dateOfBirth.value : this.dateOfBirth,
        phoneNumber: phoneNumber.present ? phoneNumber.value : this.phoneNumber,
        email: email.present ? email.value : this.email,
        bankAccountNumber: bankAccountNumber.present
            ? bankAccountNumber.value
            : this.bankAccountNumber,
      );
  @override
  String toString() {
    return (StringBuffer('CustomerData(')
          ..write('id: $id, ')
          ..write('firstname: $firstname, ')
          ..write('lastname: $lastname, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('email: $email, ')
          ..write('bankAccountNumber: $bankAccountNumber')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, firstname, lastname, dateOfBirth,
      phoneNumber, email, bankAccountNumber);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CustomerData &&
          other.id == this.id &&
          other.firstname == this.firstname &&
          other.lastname == this.lastname &&
          other.dateOfBirth == this.dateOfBirth &&
          other.phoneNumber == this.phoneNumber &&
          other.email == this.email &&
          other.bankAccountNumber == this.bankAccountNumber);
}

class CustomerCompanion extends UpdateCompanion<CustomerData> {
  final Value<int> id;
  final Value<String?> firstname;
  final Value<String?> lastname;
  final Value<String?> dateOfBirth;
  final Value<String?> phoneNumber;
  final Value<String?> email;
  final Value<String?> bankAccountNumber;
  const CustomerCompanion({
    this.id = const Value.absent(),
    this.firstname = const Value.absent(),
    this.lastname = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.email = const Value.absent(),
    this.bankAccountNumber = const Value.absent(),
  });
  CustomerCompanion.insert({
    this.id = const Value.absent(),
    this.firstname = const Value.absent(),
    this.lastname = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.email = const Value.absent(),
    this.bankAccountNumber = const Value.absent(),
  });
  static Insertable<CustomerData> custom({
    Expression<int>? id,
    Expression<String>? firstname,
    Expression<String>? lastname,
    Expression<String>? dateOfBirth,
    Expression<String>? phoneNumber,
    Expression<String>? email,
    Expression<String>? bankAccountNumber,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (firstname != null) 'Firstname': firstname,
      if (lastname != null) 'Lastname': lastname,
      if (dateOfBirth != null) 'DateOfBirth': dateOfBirth,
      if (phoneNumber != null) 'PhoneNumber': phoneNumber,
      if (email != null) 'Email': email,
      if (bankAccountNumber != null) 'BankAccountNumber': bankAccountNumber,
    });
  }

  CustomerCompanion copyWith(
      {Value<int>? id,
      Value<String?>? firstname,
      Value<String?>? lastname,
      Value<String?>? dateOfBirth,
      Value<String?>? phoneNumber,
      Value<String?>? email,
      Value<String?>? bankAccountNumber}) {
    return CustomerCompanion(
      id: id ?? this.id,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      bankAccountNumber: bankAccountNumber ?? this.bankAccountNumber,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ID'] = Variable<int>(id.value);
    }
    if (firstname.present) {
      map['Firstname'] = Variable<String>(firstname.value);
    }
    if (lastname.present) {
      map['Lastname'] = Variable<String>(lastname.value);
    }
    if (dateOfBirth.present) {
      map['DateOfBirth'] = Variable<String>(dateOfBirth.value);
    }
    if (phoneNumber.present) {
      map['PhoneNumber'] = Variable<String>(phoneNumber.value);
    }
    if (email.present) {
      map['Email'] = Variable<String>(email.value);
    }
    if (bankAccountNumber.present) {
      map['BankAccountNumber'] = Variable<String>(bankAccountNumber.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerCompanion(')
          ..write('id: $id, ')
          ..write('firstname: $firstname, ')
          ..write('lastname: $lastname, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('email: $email, ')
          ..write('bankAccountNumber: $bankAccountNumber')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  late final Customer customer = Customer(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [customer];
}
