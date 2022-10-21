class RegisterRequestModel {
  String? username;
  String? password;
  String? email;
  String? fullName;
  String? numberPhone;
  String? oficina;

  RegisterRequestModel(
      {this.username,
      this.password,
      this.email,
      this.fullName,
      this.numberPhone,
      this.oficina});

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    email = json['email'];
    fullName = json['full_name'];
    numberPhone = json['number_phone'];
    oficina = json['oficina'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    data['email'] = this.email;
    data['full_name'] = this.fullName;
    data['number_phone'] = this.numberPhone;
    data['oficina'] = this.oficina;
    return data;
  }
}
