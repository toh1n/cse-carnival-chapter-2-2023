import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:reach_out/data/api/network_caller.dart';
import 'package:reach_out/data/models/network_response.dart';
import 'package:reach_out/data/utils/urls.dart';


class SignUpController extends GetxController {
  bool _loginInProgress = false;

  bool get loginInProgress => _loginInProgress;

  Future<bool> signUp(String email, String password,String firstName,String lastName,String address,String phone) async {
    _loginInProgress = true;
    update();

    Map<String, dynamic> requestBody = {
      'name' : firstName,
      "email": email,
      "phone" : phone,
      "password": password,
      "cfpassword": password,
      "address" : address,

    };
    final NetworkResponse response = await NetworkCaller.postRequest(Urls.signUpUrl, requestBody);
    _loginInProgress = false;
    if (response.isSuccess) {
      Fluttertoast.showToast(msg: response.responseJson!['message'].toString());
      update();
      return true;
    } else {
      update();
      return false;
    }
  }
}