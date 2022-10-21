import 'dart:convert';

RegisterResponseModel registerResponseModel(String str) =>
    RegisterResponseModel.fromJson(json.decode(str));

class RegisterResponseModel {
  User? user;
  String? token;

  RegisterResponseModel({this.user, this.token});

  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  int? id;
  String? username;
  String? email;
  String? password;
  int? roleId;
  Employee? employee;
  int? employeeId;

  User(
      {this.id,
      this.username,
      this.email,
      this.password,
      this.roleId,
      this.employee,
      this.employeeId});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    roleId = json['roleId'];
    employee = json['employee'] != null
        ? new Employee.fromJson(json['employee'])
        : null;
    employeeId = json['employeeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['roleId'] = this.roleId;
    if (this.employee != null) {
      data['employee'] = this.employee!.toJson();
    }
    data['employeeId'] = this.employeeId;
    return data;
  }
}

class Employee {
  int? id;
  String? fullName;
  String? email;
  int? numberPhone;
  String? oficina;

  Employee(
      {this.id, this.fullName, this.email, this.numberPhone, this.oficina});

  Employee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
    email = json['email'];
    numberPhone = json['number_phone'];
    oficina = json['oficina'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['full_name'] = this.fullName;
    data['email'] = this.email;
    data['number_phone'] = this.numberPhone;
    data['oficina'] = this.oficina;
    return data;
  }
}
