import 'package:flutter/material.dart';

class NotificationsCard extends StatelessWidget {
  final String imgUrl;
  final String userName;
  final String status;
  const NotificationsCard({super.key, required this.imgUrl, required this.userName, required this.status});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        imgUrl,height: 40,width: 40,fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return const Icon(Icons.person);
        },
      ),
      title:  Text(
          "Request $status"
      ),
      subtitle: Text(
          "Your request to talk with $userName $status"
      ),
    );
  }
}
