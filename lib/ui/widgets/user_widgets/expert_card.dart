import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:reach_out/ui/screens/expert_details_screen.dart';

class ExpertCard extends StatelessWidget {
  final String expertName;
  final String imgUrl;
  final String description;
  final String category;
  final VoidCallback onTap;
  final dynamic pricePerSession;
  final dynamic expertRating;

  const ExpertCard(
      {super.key,
      required this.expertName,
      required this.imgUrl,
      required this.description,
      required this.category,
      this.pricePerSession,
      this.expertRating, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        children: [
          InkWell(
            onTap: (){
              Get.to(ExpertDetailsScreen());
            },
            child: Column(
              children: [
                ListTile(
                  leading: SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.network(
                      imgUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.person,
                          weight: 100,
                        );
                      },
                    ),
                  ),
                  title: Text(expertName),
                  subtitle: Row(
                    children: [
                      Text(expertRating.toString()),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Bangladesh"),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      description,
                      textAlign: TextAlign.justify,
                    ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: onTap,
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(MediaQuery.of(context).size.width, 40)),
              child: const Text(
                'Request Help',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
