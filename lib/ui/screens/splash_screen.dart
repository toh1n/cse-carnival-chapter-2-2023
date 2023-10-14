import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reach_out/ui/screens/auth/login_screen.dart';
import 'package:reach_out/ui/utils/assets_util.dart';
import 'package:reach_out/ui/widgets/user_widgets/screen_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<void> goToNextScreen() async {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Get.offAll(const LoginScreen());
    });
  }
  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Image.asset(AssetsUtils.logoPNG,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
