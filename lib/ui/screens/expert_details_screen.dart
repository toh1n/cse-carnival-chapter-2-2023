import 'package:flutter/material.dart';

class ExpertDetailsScreen extends StatefulWidget {
  const ExpertDetailsScreen({super.key});

  @override
  State<ExpertDetailsScreen> createState() => _ExpertDetailsScreenState();
}

class _ExpertDetailsScreenState extends State<ExpertDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
    );
  }
}
