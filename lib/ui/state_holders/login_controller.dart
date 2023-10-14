import 'dart:developer';

import 'package:get/get.dart';
import 'package:reach_out/data/api/network_caller.dart';
import 'package:reach_out/data/models/network_response.dart';
import 'package:reach_out/data/utils/urls.dart';
import 'package:reach_out/ui/state_holders/auth_controller.dart';


class LoginController extends GetxController {
  bool _loginInProgress = false;

  bool get loginInProgress => _loginInProgress;

  Future<bool> login(String email, String password) async {
    _loginInProgress = true;
    update();

    Map<String, dynamic> requestBody = {
      "email": email,
      "password": password,
    };
    final NetworkResponse response = await NetworkCaller.postRequest(Urls.loginUrl, requestBody);
    log(response.responseJson.toString());
    _loginInProgress = false;
    if (response.isSuccess) {
      await AuthController.setAccessToken(response.responseJson?['token']);
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}