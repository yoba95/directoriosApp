import 'dart:convert';

import 'package:app_directorios/common/config.dart';
import 'package:app_directorios/models/login_request_model.dart';
import 'package:app_directorios/models/login_response_model.dart';
import 'package:app_directorios/models/register_request_model.dart';
import 'package:app_directorios/models/register_response_model.dart';
import 'package:app_directorios/services/shared_service.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  static Future<bool> login(LoginRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.http(Config.apiUrl, Config.loginApi);

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );

    if (response.statusCode == 200 && response.statusCode < 300) {
      //SHARED
      await SharedService.setLoginDetails(loginResponseJson(response.body));
      return true;
    } else {
      return false;
    }
  }
//coments
  static Future<RegisterResponseModel> register(
      RegisterRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.http(Config.apiUrl, Config.createCountApi);

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );

    return registerResponseModel(response.body);
  }
}
