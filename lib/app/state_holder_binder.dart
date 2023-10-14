import 'package:get/get.dart';
import 'package:reach_out/ui/state_holders/base_nav_screen_controller.dart';
import 'package:reach_out/ui/state_holders/login_controller.dart';
import 'package:reach_out/ui/state_holders/sign_up_controller.dart';

class StateHolderBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(BaseNavController());
    Get.put(SignUpController());
    Get.put(LoginController());
  }
}
