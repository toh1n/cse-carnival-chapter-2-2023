import 'dart:developer';

import 'package:get/get.dart';
import 'package:reach_out/data/api/network_caller.dart';
import 'package:reach_out/data/models/network_response.dart';
import 'package:reach_out/data/utils/urls.dart';

class HomeFeedController extends GetxController{
  bool _loadingInProgress = false;

  bool get loginInProgress => _loadingInProgress;
  Future<bool> getExpertList(String email, String password) async {
    _loadingInProgress = true;
    update();

    final NetworkResponse response = await NetworkCaller.getRequest(Urls.getExperts);
    log(response.toString());
    _loadingInProgress = false;
    if (response.isSuccess) {
      update();
      return true;
    } else {
      update();
      return false;
    }
  }

}