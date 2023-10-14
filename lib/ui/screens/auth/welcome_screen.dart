import 'package:flutter/material.dart';
import 'package:reach_out/ui/widgets/user_widgets/round_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("data"),
            const Text("data"),
            const Spacer(),
            const SizedBox(
              height: 25,
            ),
            RoundButton(buttonName: "Find Experts", onTap: (){}),
            const SizedBox(
              height: 25,
            ),
            RoundButton(buttonName: "Join as an Expert", onTap: (){}),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
