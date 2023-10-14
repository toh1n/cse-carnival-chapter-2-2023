import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:reach_out/ui/screens/auth/sign_up_screen.dart';
import 'package:reach_out/ui/screens/base_nav_screen.dart';
import 'package:reach_out/ui/state_holders/login_controller.dart';
import 'package:reach_out/ui/widgets/user_widgets/round_button.dart';
import 'package:reach_out/ui/widgets/user_widgets/screen_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 64,
                    ),
                    Text(
                      'Get Started With',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _emailTEController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        if (!value.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      controller: _passwordTEController,
                      obscureText: true,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters long';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    GetBuilder<LoginController>(
                      builder: (controller) {
                        return RoundButton(
                          loadingInProgress: controller.loginInProgress,
                          buttonName: "Login",
                          onTap: () {
                                  // Get.offAll(const BaseNavScreen());

                            if (_formKey.currentState!.validate()) {
                              controller
                                  .login(
                                _emailTEController.text.trim(),
                                _passwordTEController.text.trim(),
                              )
                                  .then((value) {
                                if (value) {
                                  Get.offAll(const BaseNavScreen());
                                } else {
                                  Fluttertoast.showToast(msg: "Failed To Login");
                                }
                              });
                            }
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    // Center(
                    //   child: InkWell(
                    //     onTap: () {
                    //       // Add the action for "Forgot Password?" here
                    //     },
                    //     child: const Text(
                    //       'Forgot Password?',
                    //       style: TextStyle(color: Colors.grey),
                    //     ),
                    //   ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(const SignUpScreen());
                          },
                          child: const Text('Sign up'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
