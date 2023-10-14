import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllCategoryScreen extends StatefulWidget {
  const AllCategoryScreen({super.key});

  @override
  State<AllCategoryScreen> createState() => _AllCategoryScreenState();
}

class _AllCategoryScreenState extends State<AllCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black,),
        ),
        title: const Text(
          "All Categories",
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context,index){
        return Card(
          child: SizedBox(
            height: 40,
              child: Text("Category Name"),
          ),
        );
      }),
    );
  }
}
