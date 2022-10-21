import 'dart:convert';

LoginResponseModel loginResponseJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  User? user;
  String? token;

  LoginResponseModel({this.user, this.token});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
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
  Null? employeeId;
  Role? role;

  User(
      {this.id,
      this.username,
      this.email,
      this.password,
      this.roleId,
      this.employeeId,
      this.role});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    roleId = json['roleId'];
    employeeId = json['employeeId'];
    role = json['role'] != null ? new Role.fromJson(json['role']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['roleId'] = this.roleId;
    data['employeeId'] = this.employeeId;
    if (this.role != null) {
      data['role'] = this.role!.toJson();
    }
    return data;
  }
}

class Role {
  int? id;
  String? nameRole;

  Role({this.id, this.nameRole});

  Role.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameRole = json['name_role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name_role'] = this.nameRole;
    return data;
  }
/*  late final User user;
  late final String token;

  LoginResponseModel({required this.user, required this.token});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    user = json['user'] = User.fromJson(json['user']);
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
  Null? employeeId;
  Role? role;

  User(
      {this.id,
      this.username,
      this.email,
      this.password,
      this.roleId,
      this.employeeId,
      this.role});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    roleId = json['roleId'];
    employeeId = json['employeeId'];
    role = json['role'] != null ? new Role.fromJson(json['role']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['roleId'] = this.roleId;
    data['employeeId'] = this.employeeId;
    if (this.role != null) {
      data['role'] = this.role!.toJson();
    }
    return data;
  }
}

class Role {
  late final int id;
  late final String nameRole;

  Role({required this.id, required this.nameRole});

  Role.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameRole = json['name_role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name_role'] = this.nameRole;
    return data;
  }*/
}
