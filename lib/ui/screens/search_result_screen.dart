import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reach_out/ui/widgets/user_widgets/expert_card.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black),
        ),
        title: Text("Seacrh Results",style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ExpertCard(
              expertName: "expertName",
              imgUrl: "imgUrl",
              description: "description",
              category: "category",
              onTap: () {});
        },
      ),
    );
  }
}
