import 'package:flutter/material.dart';
import 'package:reach_out/ui/widgets/user_widgets/my_expert_card.dart';

class MyExpertScreen extends StatefulWidget {
  const MyExpertScreen({super.key});

  @override
  State<MyExpertScreen> createState() => _MyExpertScreenState();
}

class _MyExpertScreenState extends State<MyExpertScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("My Experts",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
      ),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context,index){
        return const MyExpertCard(name: "name", imgUrl: "imgUrl", status: "Pending", problemDescription: "problemDescription");
      }),
    );
  }
}
