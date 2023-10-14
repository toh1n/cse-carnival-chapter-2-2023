import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reach_out/data/models/category_data.dart';
import 'package:reach_out/ui/screens/all_category_screen.dart';
import 'package:reach_out/ui/screens/search_result_screen.dart';
import 'package:reach_out/ui/widgets/user_widgets/category_card.dart';
import 'package:reach_out/ui/widgets/user_widgets/expert_card.dart';
import 'package:reach_out/ui/widgets/user_widgets/section_header.dart';

class HomeFeedScreen extends StatefulWidget {
  const HomeFeedScreen({super.key});

  @override
  State<HomeFeedScreen> createState() => _HomeFeedScreenState();
}

class _HomeFeedScreenState extends State<HomeFeedScreen> {
  final CategoryData categoryCard = CategoryData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "Reach",
              style:
                  TextStyle(color: Colors.black38, fontWeight: FontWeight.bold),
            ),
            Text(
              "Out",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.black38,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search), onPressed: () {
                      Get.to(const SearchResultScreen());
                  },
                  ),
                  hintText: 'Search',
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SectionHeader(
                  title: "Category",
                  onTap: () {
                    Get.to(const AllCategoryScreen());
                  }),
              SizedBox(
                height: 90,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategoryCard(
                        categoryData: categoryCard,
                        onTap: () {

                        },
                      );
                    }),
              ),
              const SizedBox(
                height: 16,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recommended For you",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ExpertCard(
                      expertName: "expertName",
                      imgUrl: "imgUrl",
                      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
                      category: "category",
                      onTap: () {},
                    );
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
