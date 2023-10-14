import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reach_out/app/state_holder_binder.dart';
import 'package:reach_out/ui/screens/auth/login_screen.dart';
import 'package:reach_out/ui/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      navigatorKey: MyApp.globalKey,
      initialBinding: StateHolderBinder(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 1
        )
      ),
      home: const SplashScreen(),
    );
  }
}
