
import 'package:flutter/cupertino.dart';

import 'Company.dart';

class User {
  final String fullname;
  final String phoneNumber;
  final String email;
  final String password;
  final Company company;
  
  User({this.fullname, this.phoneNumber, this.email, this.password, @required this.company});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      fullname: json['fullname'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      password: json['password'],
      company: json['company']
    );
  }

  Map toMap() {
    Map companyMap;

    if (company != null) {
      companyMap = company.toMap();
    }

    return {
      'fullName': fullname,
      'phoneNumber': phoneNumber,
      'email': email,
      'password': password,
      'company': companyMap
    };
  }

}