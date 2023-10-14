import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String buttonName;
  final bool loadingInProgress;
  final VoidCallback onTap;

  const RoundButton(
      {super.key,
      required this.buttonName,
      this.loadingInProgress = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: loadingInProgress,
      replacement: InkWell(
        onTap: onTap,
        child: Container(
          height: 40,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Text(buttonName),
          ),
        ),
      ),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
